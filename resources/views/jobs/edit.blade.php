<x-layout>
    <x-slot:heading> Edit Job:  {{ $job->title }}</x-slot:heading>
  <form method="POST" action="/jobs/ {{ $job->id }}">
    @method('PATCH')
    @csrf
  <div class="space-y-12">
 

    <div class="border-b border-gray-900/10 pb-12">
     
      <div class="mt-10 max-w-md space-y-4">
        <div class="">
         
          <x-form-label for="title" >Title</x-form-label>
          <x-form-input type="text" name="title" id="title" value="{{ $job->title }}"/>
          @error('title')
            <x-input-error class="text-red-500 text-sm">{{ $message }}</x-input-error>
          @enderror
        </div>

        <div class="">
          <x-form-label for="title" >Salary</x-form-label>
          <x-form-input type="text" name="salary" id="salary" value=" {{ $job->salary }}" autocomplete="given-name"/>
          @error('salary')
          <x-input-error class="text-red-500 text-sm" >{{ $message }}</x-input-error>
          @enderror
        </div>


        <div class="col-span-full">
            <x-form-label for="description" >Description</x-form-label>
            <div class="mt-2">
              <textarea name="description" id="description"  rows="3" class="block w-full rounded-md bg-white px-3 py-1.5 text-base text-gray-900 outline-1 -outline-offset-1 outline-gray-300 placeholder:text-gray-400 focus:outline-2 focus:-outline-offset-2 focus:outline-indigo-600 sm:text-sm/6">{{ $job->description }}</textarea>
            </div>
            @error('description')
            <x-input-error class="text-red-500 text-sm">{{ $message }}</x-input-error>
          @enderror
             </div>

             </div>
    </div>


  </div>

  <div class="mt-6 flex items-center justify-end gap-x-6">
    <form action="/jobs/{{ $job->id }}" method="POST">
      @method('DELETE')
      @csrf
      <button type="submit" class="rounded-md bg-red-600 px-3 py-2 text-sm font-semibold text-white shadow-xs hover:bg-red-500 focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600">Delete</button>
    </form>
    <button type="submit" class="rounded-md bg-indigo-600 px-3 py-2 text-sm font-semibold text-white shadow-xs hover:bg-indigo-500 focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600">Update</button>
  </div>
</form>

</x-layout>
