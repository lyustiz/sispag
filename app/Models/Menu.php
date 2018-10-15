<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Menu extends Model
{
    protected $table 	  = 'menu';

	protected $primaryKey = 'id_menu';
	
	const 	  CREATED_AT  = 'fe_creado';

	const 	  UPDATED_AT  = 'fe_actualizado';

    protected $fillable   = [
                                'id_modulo',
                                'nb_menu',
                                'tx_url',
                                'tx_icon',
                                'tx_extra',
                                'nu_orden',
                                'id_menu_base',
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

    public function permiso()
    {
        return $this->HasMany('App\Models\Permiso', 'id_menu');
    }

    public function modulo()
    {
        return $this->BelongsTo('App\Models\Modulo', 'id_modulo');
    }

    public function menuBase()
    {
        return $this->BelongsTo('App\Models\Menu', 'id_menu', 'id_menu_base');
    }

    public function subMenu()
    {
        return $this->hasMany('App\Models\Menu', 'id_menu_base', 'id_menu');
        
    }
}
