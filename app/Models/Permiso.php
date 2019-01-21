<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Permiso extends Model
{
    protected $table 	  = 'permiso';

	protected $primaryKey = 'id_permiso';
	
	const 	  CREATED_AT  = 'fe_creado';

	const 	  UPDATED_AT  = 'fe_actualizado';

    protected $fillable   = [
                                'id_rol',
                                'id_menu',
                                'bo_create',
                                'bo_update',
                                'bo_read',
                                'bo_delete',
                                'tx_observaciones',
                                'id_usuario',
                                'id_status',
                                'fe_creado',
                                'fe_actualizado',
                            ]; 
                                
    protected $hidden     = ['id_usuario','fe_creado','fe_actualizado'];

    public function usuario()
    {
        return $this->BelongsTo('App\Models\Usuario', 'id_usuario');
    }

    public function menu()
    {
        return $this->BelongsTo('App\Models\Menu', 'id_menu');
    }

    public function rol()
    {
        return $this->BelongsTo('App\Models\Rol', 'id_rol');
    }
}
