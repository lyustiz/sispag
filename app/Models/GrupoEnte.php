<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class GrupoEnte extends Model
{
    protected $table 	  = 'grupo_ente';

	protected $primaryKey = 'id_grupo_ente';
	
	const 	  CREATED_AT  = 'fe_creado';

	const 	  UPDATED_AT  = 'fe_actualizado';

    protected $fillable   = [
                            'id_ente',
                            'id_grupo_ente',
                            'tx_observaciones',
                            'id_usuario',
                            'id_status',
                            'fe_creado',
                            'fe_actualizado'
                            ]; 
   
    
    protected $hidden     = ['id_usuario','fe_creado','fe_actualizado'];

    public function ente(){
    
        return $this->HasMany('App\Models\Ente', 'id_grupo_ente');
    
    }
    
    public function status(){
    
        return $this->HasMany('App\Models\Status', 'id_status');
    
    }

    public function usuario(){
    
        return $this->BelongsTo('App\Models\Usuario', 'id_usuario');
    
    }
}
