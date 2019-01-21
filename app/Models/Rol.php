<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Rol extends Model
{
    protected $table 	  = 'rol';

	protected $primaryKey = 'id_rol';
	
	const 	  CREATED_AT  = 'fe_creado';

	const 	  UPDATED_AT  = 'fe_actualizado';

    protected $fillable   = [
                                'nb_rol',
                                'tx_observaciones',
                                'id_usuario',
                                'id_status',
                                'fe_creado',
                                'fe_actualizado',
                            ]; 

    protected $hidden     = ['id_usuario','fe_creado','fe_actualizado'];

    public function usuario(){
    
        return $this->BelongsTo('App\Models\Usuario', 'id_usuario');
    
    }

    public function status(){
    
        return $this->BelongsTo('App\Models\Status', 'id_status');
    
    }

    public function usuarioRol(){
    
        return $this->HasOne('App\Models\UsuarioRol', 'id_rol');
    
    }

    public function permiso(){
    
        return $this->HasMany('App\Models\Permiso', 'id_rol');
    
    }


}
