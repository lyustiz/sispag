<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Modulo extends Model
{
    protected $table 	  = 'modulo';

	protected $primaryKey = 'id_modulo';
	
	const 	  CREATED_AT  = 'fe_creado';

	const 	  UPDATED_AT  = 'fe_actualizado';

    protected $fillable   = [
                            'nb_modulo',
                            'tx_icono',
                            'tx_extra',
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
        return $this->HasMany('App\Models\Menu', 'id_modulo');
    }
}
