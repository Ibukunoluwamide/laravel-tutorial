<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Validation\ValidationException;

class SessionController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function create()
    {
        //
        return view('auth.login');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
      $validated =  $request->validate([
            'email' => 'required | email',
            'password' => 'required'
        ]);
       
        $auth = Auth::attempt($validated);
        if (!$auth) {
          throw ValidationException::withMessages([
            'email'=>'Invalid credentials'
        ]);
        }
        $request->session()->regenerate();
        return redirect('/jobs');
    }
    
    /**
     * Remove the specified resource from storage.
     */
    public function destroy()
    {
        //
        Auth::logout();
        return redirect('/jobs');
        
    }
}
