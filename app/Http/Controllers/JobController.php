<?php

namespace App\Http\Controllers;

use App\Models\Job;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;

class JobController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        $job = Job::with('employer')->latest()->simplePaginate(5);
        return view('jobs.index', [
            'jobs' => $job,
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
        return view('jobs.create');

    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
      $request->validate([
            'title' => 'required',
            'description' => 'required',
            'salary' => 'required',
        ]);
       
        Job::create([
            'title' => $request->title,
            'description' => $request->description,
            'salary' => $request->salary,
            'employer_id' => 1,
        ]);
        return redirect('/jobs');
        // return $validated;
    }

    /**
     * Display the specified resource.
     */
    public function show(Job $job)
    {
        //

        // $job = Arr::first(Job::all(), fn($job) => $job['id'] == $id);
        //    dd($job);
        if (!$job) {
            abort(404);
        }
        return view('jobs.show', ['job' => $job]);
    }
    
    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Job $job)
    {
        return view('jobs.edit', ['job' => $job]);
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
      $request->validate([
        'title' => 'required',
        'description' => 'required',
        'salary' => 'required',
    ]);
    $job = Job::findOrFail($id);
    $job->update([
        'title' => $request->title,
        'description' => $request->description,
        'salary' => $request->salary,
    ]);
    return redirect('/jobs/' . $job->id);
    
}

/**
 * Remove the specified resource from storage.
 */
public function destroy(string $id)
{
        $job = Job::findOrFail($id);
        $job->delete();
        return redirect('/jobs');
        //
    }
}
