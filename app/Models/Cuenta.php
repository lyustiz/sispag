<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Cuenta extends Model
{
    protected $table 	  = 'cuenta';

	protected $primaryKey = 'id_cuenta';
	
	const 	  CREATED_AT  = 'fe_creado';

	const 	  UPDATED_AT  = 'fe_actualizado';

    protected $fillable   = [
                            'id_moneda',
                            'mo_disponible',
                            'mo_instruido',
                            'mo_aprobado',
                            'mo_total',
                            'tx_observaciones',
                            'id_usuario',
                            'id_status',
                            'fe_creado',
                            'fe_actualizado'
                            ]; 

    
    protected $hidden     = ['id_usuario'];

                           
   
    public function scopeMoneda($query, $moneda)
    {
        return $query->where('id_moneda', $moneda);
    }
    
    public function movimiento(){
    
        return $this->HasMany('App\Models\Movimiento', 'id_moneda');
    
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
