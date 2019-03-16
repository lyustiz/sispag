<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Ingreso extends Model
{
    protected $table 	  = 'ingreso';

	protected $primaryKey = 'id_ingreso';
	
	const 	  CREATED_AT  = 'fe_creado';

	const 	  UPDATED_AT  = 'fe_actualizado';

    protected $fillable   = [
                            'id_tipo_ingreso',
                            'id_ente',
                            'id_moneda',
                            'mo_ingreso',
                            'mo_tasa',
                            'fe_ingreso',
                            'id_banco',
                            'fe_periodo_inicio',
                            'fe_periodo_fin',
                            'tx_observaciones',
                            'id_usuario',
                            'id_status',
                            'fe_creado',
                            'fe_actualizado'
                            ]; 
    
    protected $hidden     = ['id_usuario','fe_creado', 'fe_actualizado'];

    protected $appends = ['mo_dolares'];

    public function getMoDolaresAttribute()
    {
        return $this->attributes['mo_ingreso'] * $this->attributes['mo_tasa'];
    }
    
    public function getFeIngresoAttribute($value) {
  
        return \Carbon\Carbon::parse($value)->format('Y-m-d');
    }

    public function tipoIngreso(){
    
        return $this->BelongsTo('App\Models\TipoIngreso', 'id_tipo_ingreso');
    
    }
    
    public function ente(){
    
        return $this->BelongsTo('App\Models\Ente', 'id_ente');
    
    }

    public function moneda(){
    
        return $this->BelongsTo('App\Models\Moneda', 'id_moneda');
    
    }
    
    public function banco(){
    
        return $this->BelongsTo('App\Models\Banco', 'id_banco');
    
    }
    
    public function status(){
    
        return $this->BelongsTo('App\Models\Status', 'id_status');
    
    }

    public function usuario(){
    
        return $this->BelongsTo('App\Models\Usuario', 'id_usuario');
    
    }
}
