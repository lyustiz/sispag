<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class GrupoBanco extends Model
{
    protected $table 	  = 'grupo_banco';

	protected $primaryKey = 'id_grupo_banco';
	
	const 	  CREATED_AT  = 'fe_creado';

	const 	  UPDATED_AT  = 'fe_actualizado';

    protected $fillable   = [
                            'nb_grupo_banco',
                            'tx_observaciones',
                            'id_usuario',
                            'id_status',
                            'fe_creado',
                            'fe_actualizado'
                            ]; 
    
    protected $hidden     = ['id_usuario','fe_creado','fe_actualizado'];
    
    public function banco(){
    
        return $this->HasMany('App\Models\Banco', 'id_grupo_banco');
    
    }

    public function status(){
    
        return $this->BelongsTo('App\Models\Status', 'id_status');
    
    }

    public function usuario(){
    
        return $this->BelongsTo('App\Models\Usuario', 'id_usuario');
    
    }
}
