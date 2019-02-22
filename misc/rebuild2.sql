select  
	ingreso - instruccion as disponible,	
	instruccion - pagado  instruccion,
	(ingreso - instruccion)+ (instruccion - pagado) total

from 

(
	SELECT (select sum(mo_ingreso) from pagos.ingreso where id_status = 1 )   ingreso, 
	       SUM(MO_INSTRUCCION) instruccion, 
	       SUM(MO_PAGO) pagado, moneda  FROM 
	(
		SELECT mo_instruccion,
		       ( SELECT nb_moneda
			   FROM pagos.moneda 
			  WHERE id_moneda = ins.id_moneda) moneda,
		    (SELECT sum(mo_final_pago) 
		       FROM pagos.pago pag 
		      WHERE pag.id_status = 31  
			AND pag.id_instruccion = ins.id_instruccion) MO_PAGO
		FROM pagos.instruccion ins
		
	) pago

	group by moneda
) total
