<x-layout>
    <x-slot:heading> Jobs Listings</x-slot:heading>
    <ul>

        @foreach ($jobs as $job)
            <li class="shadow-sm border rounded-sm px-6 mt-2 hover:bg-gray-100">
                <a href="/jobs/{{ $job['id'] }}" class=" block py-6 ">
                    <h1 class="font-bold"> {{ $job->employer->name }}</h1>
                    <strong>{{ $job['title'] }}: </strong> Pays {{ $job['salary'] }} per year.
                </a>
            </li>
        @endforeach
        <div class="mt-4">
            {{ $jobs->links() }}
        </div>
    </ul>
</x-layout>
