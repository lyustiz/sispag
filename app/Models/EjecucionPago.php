<?php

namespace App\models;

use Illuminate\Database\Eloquent\Model;

class EjecucionPago extends Model
{
    protected $table 	  = 'ejecucion_pago';

	protected $primaryKey = 'id_ejecucion_pago';
	
	const 	  CREATED_AT  = 'fe_creado';

	const 	  UPDATED_AT  = 'fe_actualizado';

    protected $fillable   = [
                            'id_pago',
                            'id_banco',
                            'fe_envio_inst',
                            'id_etapa_envio',
                            'tx_observaciones',
                            'id_usuario',
                            'id_status',
                            'fe_creado',
                            'fe_actualizado',
                            
                            //nueva version
                            'id_banco_co',
                            'fe_envio_co',
                            'id_status_co',
                            'id_banco_in',
                            'fe_envio_in',
                            'id_status_in'
                            ]; 
    
    protected $hidden     = ['id_usuario','fe_creado','fe_actualizado'];

    public function getFeEnvioInstAttribute($value) {
  
        return \Carbon\Carbon::parse($value)->format('Y-m-d');
    }

    public function pago(){
    
        return $this->BelongsTo('App\Models\Pago', 'id_pago');
    
    }

    public function banco(){
    
        return $this->BelongsTo('App\Models\Banco', 'id_banco');
    
    }

    public function etapaEnvio(){
    
        return $this->BelongsTo('App\Models\EtapaEnvio', 'id_etapa_envio');
    
    }

    public function status(){
    
        return $this->BelongsTo('App\Models\Status', 'id_status');
    
    }

    public function usuario(){
    
        return $this->BelongsTo('App\Models\Usuario', 'id_usuario');
    
    }
}
