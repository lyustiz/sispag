<?php

namespace App\Http\Middleware;

use Closure;

class CheckPermiso
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if(!Auth::check())
        {
            return redirect('login');
        }

        $permisos = Auth::user()->load('permiso');

        $hasRol = false;

        foreach ($roles->usuarioRol as $key => $usuarioRol) 
        {
            if($usuarioRol->rol->nb_rol  == $rol)
            {
                $hasRol = true;
            }
        }

        if($hasRol)
        {
            return $next($request);
        }
        else
        {
            abort(403, "Accion no Autorizada");
        }

    }
    
}
