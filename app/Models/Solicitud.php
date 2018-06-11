<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Solicitud extends Model
{
    protected $table 	  = 'solicitud';

	protected $primaryKey = 'id_solicitud';
	
	const 	  CREATED_AT  = 'fe_creado';

	const 	  UPDATED_AT  = 'fe_actualizado';

    protected $fillable   = [
                            'nu_solicitud',
                            'tx_concepto',
                            'mo_solicitud',
                            'fe_solicitd',
                            'id_ente',
                            'id_moneda',
                            'id_categoria',
                            'tx_observaciones',
                            'id_usuario',
                            'id_status',
                            'fe_creado',
                            'fe_actualizado'
                            ]; 
    
    protected $hidden     = ['id_usuario','fe_creado','fe_actualizado'];
    
    public function ente(){
    
        return $this->BelongsTo('App\Models\Ente', 'id_ente');
    
    }

    public function categoria(){
    
        return $this->BelongsTo('App\Models\Categoria', 'id_categoria');
    
    }

    public function moneda(){
    
        return $this->BelongsTo('App\Models\Moneda', 'id_moneda');
    
    }

    public function status(){
    
        return $this->BelongsTo('App\Models\Status', 'id_status');
    
    }

    public function usuario(){
    
        return $this->BelongsTo('App\Models\Usuario', 'id_usuario');
    
    }
}
