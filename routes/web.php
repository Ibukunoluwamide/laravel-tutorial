<?php

use App\Http\Controllers\JobController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\SessionController;
use App\Models\Job;
use Illuminate\Support\Facades\Route;
use \Illuminate\Support\Arr;


Route::view('/', 'home');
Route::view('/contact','contact');
Route::resource('jobs', JobController::class)->except(['create', 'index'])->middleware(['auth', 'can:edit-job,job']);
Route::get('jobs', [JobController::class, 'index'])->name('jobs.index');
Route::get('jobs/{job}', [JobController::class, 'show'])->name('jobs.show'); 
// Route::middleware(['auth'])->group(function () {
//     Route::get('jobs/create', [JobController::class, 'create'])->name('jobs.create');
//     Route::get('jobs/{job}/edit', [JobController::class, 'edit'])->name('jobs.edit'); 
//     Route::delete('jobs/{job}', [JobController::class, 'destroy'])->name('jobs.destroy');
//     Route::patch('jobs/{job}', [JobController::class, 'update'])->name('jobs.update'); 
//     Route::put('jobs/{job}', [JobController::class, 'update'])->name('jobs.update'); 
//     Route::post('jobs', [JobController::class, 'store'])->name('jobs.store'); 
// });
Route::get('/register', [RegisterController::class, 'create']);
Route::post('/register', [RegisterController::class, 'store']);
Route::get('/login', [SessionController::class, 'create'])->name('login');
Route::post('/login', [SessionController::class, 'store']);
Route::post('/logout', [SessionController::class, 'destroy']);
