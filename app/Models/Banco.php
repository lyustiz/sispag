<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Banco extends Model
{
    protected $table 	  = 'banco';

	protected $primaryKey = 'id_banco';
	
	const 	  CREATED_AT  = 'fe_creado';

	const 	  UPDATED_AT  = 'fe_actualizado';

    protected $fillable   = [
                            'nb_banco',
                            'co_switf',
                            'id_tipo_banco',
                            'id_grupo_banco',
                            'tx_observaciones',
                            'id_usuario',
                            'id_status',
                            'fe_creado',
                            'fe_actualizado'
                            ]; 
    
    protected $hidden     = ['id_usuario','fe_creado','fe_actualizado'];

    protected $appends = ['tx_switf_nombre'];

    public function getTxSwitfNombreAttribute()
    {
        return $this->attributes['co_switf'] . ' - ' . $this->attributes['nb_banco'];
    }

    public function scopeGrupo($query, $grupo)
    {
        return $query->where('id_grupo_banco', $grupo);
    }

    public function scopeTipo($query, $tipo)
    {
        return $query->where('id_tipo_banco', $tipo);
    }
    
    public function instruccion(){
    
        return $this->HasMany('App\Models\Instruccion', 'id_banco');
    
    }
    
    public function ingreso(){
    
        return $this->HasMany('App\Models\Ingreso', 'id_banco');
    
    }

    public function pago(){
    
        return $this->HasMany('App\Models\Pago', 'id_banco');
    
    }

    public function ejecucionPago(){
    
        return $this->HasMany('App\Models\EjecucionPago', 'id_banco');
    
    }
    
    public function tipoBanco(){
    
        return $this->BelongsTo('App\Models\TipoBanco', 'id_tipo_banco');
    
    }

    public function grupoBanco(){
    
        return $this->BelongsTo('App\Models\GrupoBanco', 'id_grupo_banco');
    
    }
    
    public function status(){
    
        return $this->BelongsTo('App\Models\Status', 'id_status');
    
    }

    public function usuario(){
    
        return $this->BelongsTo('App\Models\Usuario', 'id_usuario');
    
    }

}
