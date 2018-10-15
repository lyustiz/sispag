<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class UsuarioRol extends Model
{
    protected $table 	  = 'usuario_rol';

	protected $primaryKey = 'id_usuario_rol';
	
	const 	  CREATED_AT  = 'fe_creado';

	const 	  UPDATED_AT  = 'fe_actualizado';

    protected $fillable   = [
                                'id_usuario_r',
                                'id_rol',
                                'tx_especial',
                                'tx_observaciones',
                                'id_usuario',
                                'id_status',
                                'fe_creado',
                                'fe_actualizado',
                            ]; 

    protected $hidden     = ['id_usuario','fe_creado','fe_actualizado'];

    public function usuario(){
    
        return $this->BelongsTo('App\Models\Usuario', 'id_usuario', 'id_usuario_r');
    
    }

    public function rol(){
    
        return $this->BelongsTo('App\Models\Rol', 'id_rol');
    
    }


    public function status(){
    
        return $this->BelongsTo('App\Models\Status', 'id_status');
    
    }

}
