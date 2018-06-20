<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Pago extends Model
{
    protected $table 	  = 'pago';

	protected $primaryKey = 'id_pago';
	
	const 	  CREATED_AT  = 'fe_creado';

	const 	  UPDATED_AT  = 'fe_actualizado';

    protected $fillable   = [
                            'id_instruccion',
                            'fe_liq_bcv',
                            'id_banco',
                            'fe_pago',
                            'id_moneda',
                            'id_tasa',
                            'mo_final_pago',
                            'id_tipo_pago',
                            'tx_observacion',
                            'id_usuario',
                            'id_status',
                            'fe_creado',
                            'fe_actualizado'
                            ]; 
    
    protected $hidden     = ['id_usuario','fe_creado','fe_actualizado'];
    
    public function ejecucionPago(){
    
        return $this->HasMany('App\Models\Pago', 'id_pago');
    
    }
    
    public function moneda(){
    
        return $this->BelongsTo('App\Models\Moneda', 'id_moneda');
    
    }

    public function banco(){
    
        return $this->BelongsTo('App\Models\Banco', 'id_banco');
    
    }

    public function tipoPago(){
    
        return $this->BelongsTo('App\Models\TipoPago', 'id_tipo_pago');
    
    }

    public function status(){
    
        return $this->BelongsTo('App\Models\Status', 'id_status');
    
    }

    public function usuario(){
    
        return $this->BelongsTo('App\Models\Usuario', 'id_usuario');
    
    }
   
    
}
