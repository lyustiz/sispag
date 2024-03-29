<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TipoEnte extends Model
{
    protected $table 	  = 'tipo_ente';

	protected $primaryKey = 'id_tipo_ente';
	
	const 	  CREATED_AT  = 'fe_creado';

	const 	  UPDATED_AT  = 'fe_actualizado';

    protected $fillable   = [
                            'nb_tipo_ente',
                            'tx_observaciones',
                            'id_usuario',
                            'id_status',
                            'fe_creado',
                            'fe_actualizado'
                            ]; 
    
    protected $hidden     = ['id_usuario','fe_creado','fe_actualizado'];
    

    public function ente(){
    
        return $this->HasMany('App\Models\Ente', 'id_tipo_ente');
    
    }


    public function status(){
    
        return $this->BelongsTo('App\Models\Status', 'id_status');
    
    }

    public function usuario(){
    
        return $this->BelongsTo('App\Models\Usuario', 'id_usuario');
    
    }
}
