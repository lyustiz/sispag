<?php

namespace App\Models;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Laravel\Passport\HasApiTokens;

class Usuario extends Authenticatable
{
    use HasApiTokens,Notifiable;

    protected $guard      = 'users';

    protected $table 	  = 'usuario';

	protected $primaryKey = 'id_usuario';
	
	const 	  CREATED_AT  = 'fe_creado';

	const 	  UPDATED_AT  = 'fe_actualizado';

    protected $fillable   = [
                            'usuario',
                            'password',
                            'nu_cedula',
                            'nb_nombre',
                            'nb_apellido',
                            'remember_token',
                            'tx_observaciones',
                            'id_status',
                            'fe_creado',
                            'fe_actualizado'
                            ]; 
    
    protected $hidden     = ['remember_token','password','fe_creado','fe_actualizado'];
    
    public function status(){
    
        return $this->BelongsTo('App\Models\Status', 'id_status');
    
    }

    public function usuarioRol(){
    
        return $this->HasOne('App\Models\UsuarioRol', 'id_usuario_r', 'id_usuario');
    
    }
    
    public function banco(){
    
        return $this->HasMany('App\Models\Banco', 'id_status');
    
    }

    public function pago(){
    
        return $this->HasMany('App\Models\Pago', 'id_status');
    
    }
    
    public function categoria(){
        
        return $this->HasMany('App\Models\Categoria', 'id_status');
    
    }
    
    public function claseEnte(){
        
        return $this->HasMany('App\Models\ClaseEnte', 'id_status');
    
    }
    
    public function ente(){
        
        return $this->HasMany('App\Models\Ente', 'id_status');
    
    }
    
    public function etapaEnvio(){
        
        return $this->HasMany('App\Models\EtapaEnvio', 'id_status');
    
    }
    
    public function grupoBancos(){
        
        return $this->HasMany('App\Models\GrupoBancos', 'id_status');
    
    }
    
    public function grupoEnte(){
        
        return $this->HasMany('App\Models\GrupoEnte', 'id_status');
    
    }
    
    public function grupoFinanciero(){
        
        return $this->HasMany('App\Models\GrupoFinanciero', 'id_status');
    
    }
    
    public function grupoStatus(){
        
        return $this->HasMany('App\Models\GrupoStatus', 'id_status');
    
    }
    
    public function ingreso(){
        
        return $this->HasMany('App\Models\Ingreso', 'id_status');
    
    }
    
    public function instruccion(){
        
        return $this->HasMany('App\Models\Instruccion', 'id_status');
    
    }
    
    public function moneda(){
        
        return $this->HasMany('App\Models\Moneda', 'id_status');
    
    }
    
    public function tasa(){
        
        return $this->HasMany('App\Models\Tasa', 'id_status');
    
    }
    
    public function tipoBanco(){
        
        return $this->HasMany('App\Models\TipoBanco', 'id_status');
    
    }
    
    public function tipoEnte(){
        
        return $this->HasMany('App\Models\TipoEnte', 'id_status');
    
    }
    
    public function tipoIngreso(){
        
        return $this->HasMany('App\Models\TipoIngreso', 'id_status');
    
    }
    
    public function tipoPago(){
        
        return $this->HasMany('App\Models\TipoPago', 'id_status');
    
    }
    
}
