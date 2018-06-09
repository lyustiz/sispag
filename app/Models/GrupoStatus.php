<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class GrupoStatus extends Model
{
    protected $table 	  = 'grupo_status';

	protected $primaryKey = 'id_grupo_status';
	
	const 	  CREATED_AT  = 'fe_creado';

	const 	  UPDATED_AT  = 'fe_actualizado';

    protected $fillable   = ['nb_grupo_status','id_tipo_grupo_status','tx_observaciones','id_status'];
    
    protected $hidden     = ['id_usuario','fe_creado','fe_actualizado'];

    public function status(){
    
        return $this->BelongsTo('App\Models\Status', 'id_status');
    
    }

    public function usuario(){
    
        return $this->BelongsTo('App\Models\Usuario', 'id_usuario');
    
    }
}
