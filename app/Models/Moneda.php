<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Moneda extends Model
{
    protected $table 	  = 'moneda';

	protected $primaryKey = 'id_moneda';
	
	const 	  CREATED_AT  = 'fe_creado';

	const 	  UPDATED_AT  = 'fe_actualizado';

    protected $fillable   = [
                            'nb_moneda',
                            'co_moneda',
                            'tx_observaciones',
                            'id_usuario',
                            'id_status',
                            'fe_creado',
                            'fe_actualizado'
                            ]; 
                        
    
    protected $hidden     = ['id_usuario','fe_creado','fe_actualizado'];
    

    public function ingreso(){
    
        return $this->HasMany('App\Models\Ingreso', 'id_moneda');
    
    }

    public function pago(){
    
        return $this->HasMany('App\Models\Pago', 'id_moneda');
    
    }

    public function solicitud(){
    
        return $this->HasMany('App\Models\Solicitud', 'id_moneda');
    
    }

    public function instruccion(){
    
        return $this->HasMany('App\Models\Instruccion', 'id_moneda');
    
    }

    public function status(){
    
        return $this->BelongsTo('App\Models\Status', 'id_status');
    
    }

    public function usuario(){
    
        return $this->BelongsTo('App\Models\Usuario', 'id_usuario');
    
    }
}
