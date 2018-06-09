<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class GrupoBancos extends Model
{
    protected $table 	  = 'grupo_bancos';

	protected $primaryKey = 'id_grupo_bancos';
	
	const 	  CREATED_AT  = 'fe_creado';

	const 	  UPDATED_AT  = 'fe_actualizado';

    protected $fillable   = ['nb_grupo_bancos','id_tipo_grupo_bancos','tx_observaciones','id_status'];
    
    protected $hidden     = ['id_usuario','fe_creado','fe_actualizado'];

    public function status(){
    
        return $this->BelongsTo('App\Models\Status', 'id_status');
    
    }

    public function usuario(){
    
        return $this->BelongsTo('App\Models\Usuario', 'id_usuario');
    
    }
}
