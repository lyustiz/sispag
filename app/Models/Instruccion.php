<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Instruccion extends Model
{
    protected $table 	  = 'instruccion';

	protected $primaryKey = 'id_instruccion';
	
	const 	  CREATED_AT  = 'fe_creado';

	const 	  UPDATED_AT  = 'fe_actualizado';

    protected $fillable   = [
                            'id_solicitud',
                            'tx_concepto',
                            'id_esquema',
                            'nu_esquema',
                            'tx_ofi_cta_mte',
                            'bo_ofi_cta_mte',
                            'fe_instruccion',
                            'mo_instruccion',
                            'id_moneda',
                            'tx_observacion',
                            'id_usuario',
                            'id_status',
                            'fe_creado',
                            'fe_actualizado'
                            ]; 
                            

    protected $hidden     = ['id_usuario','fe_creado','fe_actualizado'];

    public function getFeInstruccionAttribute($value) {
  
        return \Carbon\Carbon::parse($value)->format('Y-m-d');
    }

    public function pago(){
    
        return $this->HasMany('App\Models\Pago', 'id_instruccion');
    
    }

    public function esquema(){
    
        return $this->BelongsTo('App\Models\Esquema', 'id_esquema');
    
    }
    
    public function moneda(){
    
        return $this->BelongsTo('App\Models\Moneda', 'id_moneda');
    
    }   
    
    public function solicitud(){
    
        return $this->BelongsTo('App\Models\Solicitud', 'id_solicitud');
    
    } 

    public function status(){
    
        return $this->BelongsTo('App\Models\Status', 'id_status');
    
    }

    public function usuario(){
    
        return $this->BelongsTo('App\Models\Usuario', 'id_usuario');
    
    }
}
