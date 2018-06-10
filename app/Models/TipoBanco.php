<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TipoBanco extends Model
{
    protected $table 	  = 'tipo_banco';

	protected $primaryKey = 'id_tipo_banco';
	
	const 	  CREATED_AT  = 'fe_creado';

	const 	  UPDATED_AT  = 'fe_actualizado';

    protected $fillable   = [
                            'nb_tipo_banco',
                            'tx_observaciones',
                            'id_usuario',
                            'id_status',
                            'fe_creado',
                            'fe_actualizado'
                            ]; 
    
    protected $hidden     = ['id_usuario','fe_creado','fe_actualizado'];
    

    public function banco(){
    
        return $this->HasMany('App\Models\Banco', 'id_tipo_banco');
    
    }

    public function status(){
    
        return $this->BelongsTo('App\Models\Status', 'id_status');
    
    }

    public function usuario(){
    
        return $this->BelongsTo('App\Models\Usuario', 'id_usuario');
    
    }
}
