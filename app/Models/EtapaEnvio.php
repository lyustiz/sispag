<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class EtapaEnvio extends Model
{
    protected $table 	  = 'etapa_envio';

	protected $primaryKey = 'id_etapa_envio';
	
	const 	  CREATED_AT  = 'fe_creado';

	const 	  UPDATED_AT  = 'fe_actualizado';

    protected $fillable   = ['nb_etapa_envio','id_tipo_etapa_envio','tx_observaciones','id_status'];
    
    protected $hidden     = ['id_usuario','fe_creado','fe_actualizado'];

    public function status(){
    
        return $this->BelongsTo('App\Models\Status', 'id_status');
    
    }

    public function usuario(){
    
        return $this->BelongsTo('App\Models\Usuario', 'id_usuario');
    
    }
}
