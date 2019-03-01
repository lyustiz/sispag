-- Function: pagos.sp_tr_ejec_pago_ins_cuenta()

-- DROP FUNCTION pagos.sp_tr_ejec_pago_ins_cuenta();

CREATE OR REPLACE FUNCTION pagos.sp_tr_ejec_pago_ins_cuenta()
  RETURNS trigger AS
$BODY$
DECLARE


	
    v_id_moneda_cue     INTEGER;
    v_mo_instrucion     NUMERIC;
	v_id_moneda_pag     INTEGER;
    v_mo_final_pago     NUMERIC;
    v_mo_tasa_pago      NUMERIC;
    v_mo_total_pago     NUMERIC;

    v_mo_disponible     NUMERIC;
    v_mo_instruido      NUMERIC;
    v_mo_total 	        NUMERIC;

    v_nb_modulo         VARCHAR;
    v_tx_tipomov        VARCHAR;

    
BEGIN  

IF  (TG_OP = 'INSERT') OR (TG_OP = 'UPDATE') THEN		 


		 SELECT c.mo_disponible,
                c.mo_instruido,
                c.mo_total,
                c.id_moneda,
                p.id_moneda, 
                p.mo_final_pago  
                p.mo_tasa_pago,
                p.mo_final_pago * mo_tasa_pago
		   INTO v_mo_disponible,
                v_mo_instruido,
                v_mo_total,
                v_id_moneda_cue,
                v_id_moneda_pag, 
                v_mo_final_pago,
                v_mo_tasa_pago,
                v_mo_total_pago
		   FROM pagos.pago p
           JOIN pagos.instruccion i ON i.id_instruccion = p.id_instruccion
           JOIN pagos.cuenta      c ON c.id_moneda      = i.id_moneda
		  WHERE p.id_pago = new.id_pago; 

        
        --PAGO 
		IF (new.id_etapa_envio = 3) AND (new.id_status = 31) THEN 

			v_nb_modulo    = 'Pago';
            v_tx_tipomov   = 'Débito' 
            
            --Actualizo en la tabla cuenta
			UPDATE pagos.cuenta
			   SET  
			       mo_total         = ( mo_total      - v_mo_total_pago )
                   mo_instruido     = ( mo_instruido  - v_mo_total_pago )
			       tx_observaciones = new.tx_observaciones,
			       id_usuario       = new.id_usuario,			       
			       fe_actualizado   = now()
			 WHERE id_moneda        = v_id_moneda_cue;

 		--REVERSO
        ELSE IF (TG_OP = 'UPDATE') AND (new.id_etapa_envio = 3) AND (old.id_status = 31) AND (new.id_status <> 31) THEN 

            v_nb_modulo    = 'Reverso';
            v_tx_tipomov   = 'Crédito' 
            
            --Actualizo en la tabla cuenta
			UPDATE pagos.cuenta
			   SET  
			       mo_total         = ( mo_total      + v_mo_total_pago )
                   mo_instruido     = ( mo_instruido  + v_mo_total_pago )
			       tx_observaciones = new.tx_observaciones,
			       id_usuario       = new.id_usuario,			       
			       fe_actualizado   = now()
			 WHERE id_moneda        = v_id_moneda_cue;
		
		END IF; 

        --MOVIMIENTO
        INSERT INTO pagos.movimiento (  nu_movimiento,
                                        nb_modulo,
                                        tx_tipomov,
                                        mo_movimiento,
                                        fe_movimiento,
                                        tx_observaciones, 
                                        id_usuario, 
                                        id_status, 
                                        fe_creado, 
                                        id_moneda )
                               VALUES ( new.id_pago,
                                        v_nb_modulo,
                                        v_tx_tipomov,
                                        v_mo_total_pago,
                                        now(), 
                                        new.tx_observaciones, 
                                        new.id_usuario,
                                        new.id_status,
                                        now(),
                                        v_id_moneda_cue );
    
    RETURN NEW;

END IF; --INSERT/UPDATE
 
RETURN NULL;
 
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION pagos.sp_tr_ejec_pago_ins_cuenta()
  OWNER TO postgres;
