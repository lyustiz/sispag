<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Esquema extends Model
{
    protected $table 	  = 'esquema';

	protected $primaryKey = 'id_esquema';
	
	const 	  CREATED_AT  = 'fe_creado';

	const 	  UPDATED_AT  = 'fe_actualizado';

    protected $fillable   = [
                            'nb_esquema',
                            'tx_requerimiento',
                            'id_esquema_padre',
                            'tx_observaciones',
                            'id_usuario',
                            'id_status',
                            'fe_creado',
                            'fe_actualizado'
                            ]; 

    protected $hidden     = ['id_usuario','fe_creado','fe_actualizado'];

    public function instruccion(){
    
        return $this->HasMany('App\Models\Instruccion', 'id_esquema');
    
    }

    public function status(){
    
        return $this->BelongsTo('App\Models\Status', 'id_status');
    
    }

    public function usuario(){
    
        return $this->BelongsTo('App\Models\Usuario', 'id_usuario');
    
    }
}
