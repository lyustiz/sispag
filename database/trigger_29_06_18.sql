-- Function: pagos.sp_ins_bitacora()

-- DROP FUNCTION pagos.sp_ins_bitacora();

CREATE OR REPLACE FUNCTION pagos.sp_ins_bitacora()
  RETURNS trigger AS
$BODY$
DECLARE

  v_col_tabla  VARCHAR;
  v_id_tabla  INTEGER;

BEGIN  
 
    v_col_tabla := 'id_'||substr(TG_TABLE_NAME, position('_' in TG_TABLE_NAME)+1,50);
    EXECUTE 'SELECT $1.'||v_col_tabla INTO v_id_tabla using NEW;

IF (TG_OP = 'UPDATE') THEN

    INSERT INTO pagos.tr_bitacora (co_accion, tx_tabla, in_id_tabla,  tx_old_valor, tx_new_valor, fe_accion, id_usuario)
           VALUES ('UPD', TG_TABLE_NAME, v_id_tabla, OLD, NEW, now(), NEW.id_usuario);
          
    RETURN NEW;
   
  ELSIF (TG_OP = 'INSERT') THEN
 
    INSERT INTO pagos.tr_bitacora (co_accion, tx_tabla, in_id_tabla,  tx_old_valor, tx_new_valor, fe_accion, id_usuario)
           VALUES ('INS', TG_TABLE_NAME, v_id_tabla, NULL, NEW, now(), NEW.id_usuario);
          
    RETURN NEW;
   
  END IF;
 
  RETURN NULL;
 
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION pagos.sp_ins_bitacora()
  OWNER TO postgres;

  
  
  
  
  -- Function: pagos.sp_ins_upd_cuenta()

-- DROP FUNCTION pagos.sp_ins_upd_cuenta();

CREATE OR REPLACE FUNCTION pagos.sp_ins_upd_cuenta()
  RETURNS trigger AS
$BODY$
DECLARE

 
     v_existe           INTEGER;
     v_id_cuenta        INTEGER;      
     v_mo_total         NUMERIC;
     v_mo_totalupd      NUMERIC;
     v_mo_disponible    NUMERIC; 
     v_mo_disponibleupd NUMERIC;
   

BEGIN  

	--Consulto si la id_moneda ya se encuentra registrada
	SELECT count(*) INTO v_existe
	FROM pagos.cuenta 
	WHERE id_moneda= new.id_moneda; 





IF (TG_OP = 'INSERT') THEN

			IF (v_existe = 0) THEN

				--Se Inserta un ingreso para ese id_moneda	

				INSERT INTO pagos.cuenta(
					    id_moneda, 
					    mo_disponible,
					    mo_instruido,
					    mo_aprobado, 		   
					    mo_total, 		    
					    id_usuario, 
					    id_status, 
					    fe_creado)
				    VALUES (new.id_moneda, 
					    new.mo_ingreso, 
					    '0',
					    '0',		   
					    new.mo_ingreso, 		   
					    new.id_usuario, 
					    '1', 
					    now());	  
					  
				RETURN NEW;

			ELSE 


				--Si existe el id_moneda, actualizo los valores para esa id_moneda existente
				----------------------------------------------------------------------------
				
				SELECT mo_total,mo_disponible,id_cuenta
				INTO v_mo_totalupd,v_mo_disponibleupd,v_id_cuenta
				FROM pagos.cuenta 
				WHERE id_moneda= new.id_moneda; 	

				v_mo_total 	   := v_mo_totalupd + new.mo_ingreso;
				v_mo_disponible    := v_mo_disponibleupd + new.mo_ingreso;

				UPDATE pagos.cuenta
				   SET   
				   mo_disponible=v_mo_disponible,	 
				   mo_total=v_mo_total, 
				   tx_observaciones=new.tx_observaciones, 
				   id_usuario=new.id_usuario, 
				   id_status=new.id_status, 	   
				   fe_actualizado=now()
				 WHERE id_cuenta=v_id_cuenta;

			END IF;

-- Si se actualiza el valor del monto de ingreso se debe modificar el monto afectado (mo_total y mo_disponible)
  ELSIF (TG_OP = 'UPDATE') THEN 

	--Consulto el id_cuenta pra actualizar sobre el registro 
	SELECT id_cuenta
		INTO v_id_cuenta
	FROM pagos.cuenta 
	WHERE id_moneda= old.id_moneda; 

	-- actualizo montos (mo_total y mo_disponible)
	UPDATE pagos.cuenta
	   SET   
	   mo_disponible=new.mo_ingreso,	 
	   mo_total=new.mo_ingreso, 
	   tx_observaciones=new.tx_observaciones, 
	   id_usuario=new.id_usuario, 
	   id_status=new.id_status, 	   
	   fe_actualizado=now()
	 WHERE id_cuenta=v_id_cuenta;


  END IF;
 
  RETURN NULL;
 
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION pagos.sp_ins_upd_cuenta()
  OWNER TO postgres;

  
  
  -- Function: pagos.sp_ins_upd_movimiento()

-- DROP FUNCTION pagos.sp_ins_upd_movimiento();

CREATE OR REPLACE FUNCTION pagos.sp_ins_upd_movimiento()
  RETURNS trigger AS
$BODY$
DECLARE

     
     v_mo_disponible NUMERIC;
     v_id_cuenta INTEGER;

	BEGIN   

		IF (TG_OP = 'INSERT') OR (TG_OP = 'UPDATE') THEN

		IF new.id_status = 13 then
			INSERT INTO pagos.movimiento(
			    nu_movimiento,nb_modulo,tx_tipomov,mo_movimiento,fe_movimiento, 
			    tx_observaciones, id_usuario, id_status, fe_creado)
			VALUES (new.id_pago,'Pago','Débito',new.mo_final_pago,now(), 
			    new.tx_observaciones, new.id_usuario,new.id_usuario,now()); 
				  
			RETURN NEW;
		END IF;
		   
		  END IF;
	 
	  RETURN NULL;
	 
	END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION pagos.sp_ins_upd_movimiento()
  OWNER TO postgres;

  
  
  -- Function: pagos.sp_insupd_ejpago_status()

-- DROP FUNCTION pagos.sp_insupd_ejpago_status();

CREATE OR REPLACE FUNCTION pagos.sp_insupd_ejpago_status()
  RETURNS trigger AS
$BODY$
DECLARE


    	BEGIN   

		IF (TG_OP = 'UPDATE') OR (TG_OP = 'INSERT') THEN			
		 

			UPDATE pagos.pago
			   SET id_status=new.id_status,
			       tx_observaciones=new.tx_observaciones,
			       fe_actualizado=now()
			 WHERE id_pago= new.id_pago;		
		
				  
			RETURN NEW;	
		   
		  END IF;
	 
	  RETURN NULL;
	 
	END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION pagos.sp_insupd_ejpago_status()
  OWNER TO postgres;

  
  -- Function: pagos.sp_insupd_ing_movimiento()

-- DROP FUNCTION pagos.sp_insupd_ing_movimiento();

CREATE OR REPLACE FUNCTION pagos.sp_insupd_ing_movimiento()
  RETURNS trigger AS
$BODY$
DECLARE

     v_mo_disponible NUMERIC;
     v_id_cuenta INTEGER;

BEGIN   

		IF (TG_OP = 'INSERT') THEN
		
			INSERT INTO pagos.movimiento(
			    nu_movimiento,nb_modulo,tx_tipomov,mo_movimiento,fe_movimiento, 
			    tx_observaciones, id_usuario, id_status, fe_creado)
			VALUES (new.id_ingreso,'Ingreso','Crédito',new.mo_ingreso,now(), 
			    new.tx_observaciones, new.id_usuario,new.id_usuario,now()); 
				  
			RETURN NEW;
		   

		ELSEIF (TG_OP = 'UPDATE')  THEN

			UPDATE pagos.movimiento
			   SET mo_movimiento=new.mo_ingreso,			        
			       tx_observaciones=new.tx_observaciones,
			       id_usuario=new.id_usuario, 
			       id_status=new.id_status, 
			       fe_actualizado=now()
			 WHERE nu_movimiento=old.id_ingreso;


		  END IF;
		  
	 
	  RETURN NULL;
	 
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION pagos.sp_insupd_ing_movimiento()
  OWNER TO postgres;

  
  -- Function: pagos.sp_upd_inst_cuenta()

-- DROP FUNCTION pagos.sp_upd_inst_cuenta();

CREATE OR REPLACE FUNCTION pagos.sp_upd_inst_cuenta()
  RETURNS trigger AS
$BODY$
DECLARE


     v_mo_disponible   	NUMERIC;
     v_monto_instruido 	NUMERIC;
     v_mo_total 	NUMERIC;
     v_mo_instruido 	NUMERIC;

    --  v_mo_disponible_actual NUMERIC;
--      v_mo_instruido_actual  NUMERIC;
--      v_mo_total_actual      NUMERIC;
-- 
--      v_mo_diponible_dif NUMERIC;
--      v_mo_instruido_dif NUMERIC;

     v_mo_dispfinal    NUMERIC;
     v_monto_instfinal NUMERIC;




	BEGIN  	 

	

	


	IF (TG_OP = 'INSERT') THEN	
	

		SELECT mo_total,mo_instruido 
			INTO v_mo_total,
			     v_mo_instruido 
		FROM pagos.cuenta 
		WHERE id_moneda= new.id_moneda; 
	  
		
		v_mo_disponible	  := v_mo_total - new.mo_instruccion;
		v_monto_instruido := v_mo_instruido + new.mo_instruccion;

		UPDATE pagos.cuenta
		   SET  
		       mo_disponible=v_mo_disponible,
		       mo_instruido=v_monto_instruido, 
		       tx_observaciones=new.tx_observaciones,
		       id_usuario=new.id_usuario,
		       id_status=new.id_status, 
		       fe_actualizado=now()
		 WHERE id_moneda = new.id_moneda;

			  
		RETURN NEW;
	   


	ELSEIF (TG_OP = 'UPDATE') THEN

-- 	
-- 		SELECT mo_disponible, mo_instruido, mo_total 
-- 			into v_mo_disponible_actual, 
-- 			     v_mo_instruido_actual,
-- 			     v_mo_total_actual 
-- 		from pagos.cuenta 
-- 		where id_moneda=old.id_moneda;
-- 
-- 
-- 		v_mo_diponible_dif := v_mo_disponible_actual + old.mo_instruido;   --4000 
-- 		v_mo_instruido_dif := v_mo_instruido_actual - old.mo_instruido;
-- 
-- 
-- 		v_mo_dispfinal	  := v_mo_total_actual - new.mo_instruccion; --4000 - 3000
-- 		v_monto_instfinal := v_mo_instruido_dif + new.mo_instruccion; --0 + 3000



		SELECT 		
		  (mo_disponible + old.mo_instruccion - new.mo_instruccion),	
		  (mo_instruido - old.mo_instruccion + new.mo_instruccion)  
		  INTO v_mo_dispfinal, v_monto_instfinal
		FROM pagos.cuenta 
		WHERE id_moneda=old.id_moneda;


		
			UPDATE pagos.cuenta
			   SET  
			       mo_disponible=v_mo_dispfinal,
			       mo_instruido=v_monto_instfinal, 
			       tx_observaciones=new.tx_observaciones,
			       id_usuario=new.id_usuario,
			       id_status=new.id_status, 
			       fe_actualizado=now()
			 WHERE id_moneda = old.id_moneda;


	END IF;
	 
	  RETURN NULL;
	 
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION pagos.sp_upd_inst_cuenta()
  OWNER TO postgres;

  
  -- Function: pagos.sp_upd_pago_cuenta()

-- DROP FUNCTION pagos.sp_upd_pago_cuenta();

CREATE OR REPLACE FUNCTION pagos.sp_upd_pago_cuenta()
  RETURNS trigger AS
$BODY$
DECLARE


	v_mo_disponible   NUMERIC;
	v_monto_instruido NUMERIC;
	v_mo_total 	NUMERIC;
	v_mo_instruido 	NUMERIC;

	v_mo_totfinal NUMERIC;
	v_mo_instfinal NUMERIC;

	v_moneda_existe NUMERIC;
	v_idmone_inst NUMERIC;
	v_moint_mon NUMERIC;
	v_upd_cta_moins NUMERIC;
	v_upd_cta_modisp NUMERIC;
	nvoinst NUMERIC;
	nvodisp	NUMERIC;

	nvoinstp NUMERIC;
	nvototp NUMERIC;


BEGIN  
 
--pendiente desteminar el update

IF  (TG_OP = 'INSERT') THEN


		--Verifico que el pago a realizar sea o no la misma moneda
		SELECT id_moneda INTO v_moneda_existe 
		   FROM pagos.instruccion 
			WHERE id_instruccion=new.id_instruccion;	 


		IF new.id_moneda <> v_moneda_existe THEN 


			--Consulto los montos de inst y disp de la instrucción para asi recalcular montos
			-- en la tabla cuenta y actualizar	
			SELECT id_moneda,mo_instruccion
			   INTO v_idmone_inst, v_moint_mon
			   FROM pagos.instruccion 
				WHERE id_instruccion=new.id_instruccion;  
			
			--Obtengo los valores nuevos de los montos ya que se hace el ajuste pertinente,
			-- tomando en cuenta que la moneda de pago es distinta  
			SELECT (mo_instruido - v_moint_mon),(mo_disponible + v_moint_mon)
			INTO v_upd_cta_moins,v_upd_cta_modisp
			 FROM pagos.cuenta 
			 WHERE id_moneda=v_moneda_existe;

			--Actualizo en la tabla cuenta
			UPDATE pagos.cuenta
			   SET  
			       mo_disponible=v_upd_cta_modisp,
			       mo_instruido=v_upd_cta_moins, 
			       tx_observaciones=new.tx_observaciones,
			       id_usuario=new.id_usuario,
			       id_status=new.id_status, 
			       fe_actualizado=now()
			 WHERE id_moneda = v_moneda_existe;
			 

			--Obtengo los valores que serán cargados para la otra moneda 
			SELECT 
				(mo_instruido +  new.mo_final_pago), 
				(mo_disponible - new.mo_final_pago) 
			 INTO nvoinst, nvodisp			 	
			 FROM pagos.cuenta 
			 WHERE id_moneda=new.id_moneda;

			--Actualizo en la tabla cuenta
			UPDATE pagos.cuenta
			   SET  
			       mo_disponible=nvodisp,
			       mo_instruido=nvoinst, 
			       tx_observaciones=new.tx_observaciones,
			       id_usuario=new.id_usuario,
			       id_status=new.id_status, 
			       fe_actualizado=now()
			 WHERE id_moneda = new.id_moneda;


				IF new.id_status = 13 THEN

					--Obtengo los valores que serán cargados para la otra moneda 
					SELECT 
						(v_mo_instruido - new.mo_final_pago), 
						(v_mo_total - new.mo_final_pago) 
					 INTO nvoinstp,nvototp
					 FROM pagos.cuenta 
					 WHERE id_moneda=new.id_moneda;			

				END IF; --SI ESTATUS



		ELSE --SI MONEDA EXISTE

	
			IF new.id_status = 13 THEN

				SELECT mo_total,
				       mo_instruido 
				INTO   v_mo_total,
				       v_mo_instruido 
				FROM pagos.cuenta 
				WHERE id_moneda= new.id_moneda; 
			  
				
				v_mo_total := v_mo_total - new.mo_final_pago;
				v_monto_instruido := v_mo_instruido - new.mo_final_pago;

				UPDATE pagos.cuenta
				   SET  
				       mo_total=v_mo_total,
				       mo_instruido=v_monto_instruido, 
				       tx_observaciones=new.tx_observaciones,
				       id_usuario=new.id_usuario,
				       id_status=new.id_status, 
				       fe_actualizado=now()
				 WHERE id_moneda = new.id_moneda;

				   
				RETURN NEW;

			END IF; --SI ESTATUS
		END IF; --SI MONEDA EXISTE
  END IF;--INSERT
 
  RETURN NULL;
 
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION pagos.sp_upd_pago_cuenta()
  OWNER TO postgres;

  
  
  
  
  
  
  
  
  
  
  
  
  
  