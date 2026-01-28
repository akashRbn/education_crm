<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Symfony\Component\HttpFoundation\Response;

class Student
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        // user type agent = 3
        if (Auth::check() && Auth::user()->user_type == 3) {
            return $next($request);
        }
        return redirect('sign_in')->with('error', 'Unauthorized Access');
    }
}
