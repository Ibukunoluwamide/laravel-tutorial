<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Validation\Rules\Password;

class RegisterController extends Controller
{
  

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
        return view('auth.register');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
      $validated =  $request->validate([
            'first_name' => 'required | max:50',
            'last_name' => 'required | max:50',
            'email' => 'required | email',
            'password' => ['required', Password::default(), 'confirmed']
        ]);
       
        User::create($validated);
        return redirect('/login');
    }


}
