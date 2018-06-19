<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TipoPago extends Model
{
    protected $table 	  = 'tipo_pago';

	protected $primaryKey = 'id_tipo_pago';
	
	const 	  CREATED_AT  = 'fe_creado';

	const 	  UPDATED_AT  = 'fe_actualizado';

    protected $fillable   = [
                            'nb_tipo_pago',
                            'tx_observaciones',
                            'id_usuario',
                            'id_status',
                            'fe_creado',
                            'fe_actualizado'
                            ]; 
    
    protected $hidden     = ['id_usuario','fe_creado','fe_actualizado'];

    public function pago(){
    
        return $this->HasMany('App\Models\Pago', 'id_tipo_pago');
    
    }


    public function status(){
    
        return $this->BelongsTo('App\Models\Status', 'id_status');
    
    }

    public function usuario(){
    
        return $this->BelongsTo('App\Models\Usuario', 'id_usuario');
    
    }
}
