<?php

use App\Models\Job;
use Illuminate\Support\Facades\Route;
use \Illuminate\Support\Arr;


Route::get('/', function () {
    return view('home');
});
Route::get('/jobs', function ()  {
    $job = Job::with('employer')->simplePaginate(5);
    return view('jobs', [
        'jobs'=> $job,
     ]);
    });
Route::get('/jobs/{id}', function ($id) {

       $job = Arr::first(Job::all(), fn($job)=>$job['id']==$id);
    //    dd($job);
    if (!$job) {
        abort(404);
    }
       return view('job', ['job'=> $job]);
       
    });
Route::get('/contact', function () {
    return view('contact');
});
