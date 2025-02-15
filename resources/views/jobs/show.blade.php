<x-layout>
<x-slot:heading> Jobs</x-slot:heading>
<div class="shadow-sm border rounded-sm px-6 py-6 space-y-5 ">
    <h1 class="font-bold text-xl">{{$job['title']}}</h1>
    <p>{{ $job['description'] }}</p>
    <p><span class="font-bold">Salary: </span>{{$job['salary']}} per year</p>
      @can('edit-job', $job)
      <div class="">
          <x-button-link href="/jobs/{{ $job->id}}/edit">Edit</x-button-link>
      </div>
          
      @endcan
</div>
</x-layout>