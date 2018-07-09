<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Movimiento extends Model
{
    
    protected $table 	  = 'movimiento';

	protected $primaryKey = 'id_movimiento';
	
	const 	  CREATED_AT  = 'fe_creado';

	const 	  UPDATED_AT  = 'fe_actualizado';

    protected $fillable   = [
                            'nu_movimiento',
                            'nb_modulo',
                            'tx_tipomov',
                            'mo_movimiento',
                            'fe_movimiento',
                            'tx_observaciones',
                            'id_usuario',
                            'id_status',
                            'fe_creado',
                            'fe_actualizado'
                            ]; 
    
    protected $hidden     = ['id_usuario','fe_creado','fe_actualizado'];


    public function cuenta(){
    
        return $this->BelongsTo('App\Models\TipoBanco', 'id_tipo_banco');
    
    }
    
}
