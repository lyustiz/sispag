<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Ente extends Model
{
    protected $table 	  = 'ente';

	protected $primaryKey = 'id_ente';
	
	const 	  CREATED_AT  = 'fe_creado';

	const 	  UPDATED_AT  = 'fe_actualizado';

    protected $fillable   = [
                            'nb_ente',
                            'id_tipo_ente',
                            'id_grupo_ente',
                            'tx_observaciones',
                            'id_usuario',
                            'id_status',
                            'fe_creado',
                            'fe_actualizado'
                            ]; 
    
    protected $hidden     = ['id_usuario','fe_creado','fe_actualizado'];

    public function scopeTipo($query, $tipo)
    {
        return $query->where('id_tipo_ente', $tipo);
    }
    
    public function scopeGrupo($query, $grupo)
    {
        return $query->where('id_grupo_ente', $grupo);
    }
    
    public function tipoEnte(){
    
        return $this->BelongsTo('App\Models\TipoEnte', 'id_tipo_ente');
    
    }

    public function grupoEnte(){
    
        return $this->BelongsTo('App\Models\GrupoEnte', 'id_grupo_ente');
    
    }

    public function ingreso(){
    
        return $this->HasMany('App\Models\Ingreso', 'id_ente');
    
    }

    public function solicitud(){
    
        return $this->HasMany('App\Models\Solicitud', 'id_ente');
    
    }

    public function pago(){
    
        return $this->BelongsTo('App\Models\Pago', 'id_ente');
    
    }
    
    public function status(){
    
        return $this->BelongsTo('App\Models\Status', 'id_status');
    
    }

    public function usuario(){
    
        return $this->BelongsTo('App\Models\Usuario', 'id_usuario');
    
    }
}
