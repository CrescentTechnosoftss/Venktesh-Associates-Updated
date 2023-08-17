<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class AuthUser
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next, string $userType = null)
    {
        if ($request->session()->has('is_logged_in') === false) {
            return redirect('/');
        }
        if ($userType !== null && $request->session()->get('userType') !== 'admin') {
            return abort(403);
        }
        return $next($request);
    }
}
