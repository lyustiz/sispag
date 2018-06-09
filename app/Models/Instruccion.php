<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Instruccion extends Model
{
    protected $table 	  = 'instruccion';

	protected $primaryKey = 'id_instruccion';
	
	const 	  CREATED_AT  = 'fe_creado';

	const 	  UPDATED_AT  = 'fe_actualizado';

    protected $fillable   = ['nb_instruccion','id_tipo_instruccion','tx_observaciones','id_status'];
    
    protected $hidden     = ['id_usuario','fe_creado','fe_actualizado'];

    public function status(){
    
        return $this->BelongsTo('App\Models\Status', 'id_status');
    
    }

    public function usuario(){
    
        return $this->BelongsTo('App\Models\Usuario', 'id_usuario');
    
    }
}
