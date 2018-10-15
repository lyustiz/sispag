<?php

namespace App\Http\Middleware;

use Closure;
use \App\Models\Usuario;
use \App\Models\UsuarioRol;
use \Illuminate\Support\Facades\Auth;

class CheckRol
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next, $rol)
    {
        if(!Auth::check())
        {
            return redirect('login');
        }
        /*dd($request->path());
        $request->is('admin/*')*/
        $roles = Auth::user()->load('usuarioRol.rol');

        if(!isset($roles->usuarioRol))
        {
            abort(403, "No Autorizado: Usuario sin Roles Asignado");
        }

        $hasRol = false;

        foreach ($roles->usuarioRol as $key => $usuarioRol) 
        {
            if($usuarioRol->rol->nb_rol  == $rol)
            {
                $hasRol = true;
            }
        }
        return $next($request);
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
