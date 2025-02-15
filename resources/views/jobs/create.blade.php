<x-layout>
    <x-slot:heading> Create Job</x-slot:heading>
  <form method="POST" action="/jobs">
    @csrf
  <div class="space-y-12">
 

    <div class="border-b border-gray-900/10 pb-12">
     
      <h2 class="text-base/7 font-semibold text-gray-900">Job</h2>
                <p class="mt-1 text-sm/6 text-gray-600">We only need some information from you.</p>

      <div class="mt-10 max-w-md space-y-4">
        <div class="">
          <x-form-label for="title" >Title</x-form-label>
          <x-form-input type="text" name="title" id="title" :value="old('title')" autocomplete="given-name"/>
          @error('title')
            <x-input-error class="text-red-500 text-sm">{{ $message }}</x-input-error>
          @enderror
        </div>

        <div class="">
          <x-form-label for="title" >Salary</x-form-label>
          <x-form-input type="text" name="salary" id="salary" :value="old('salary')" autocomplete="given-name"/>
          @error('salary')
          <x-input-error class="text-red-500 text-sm" >{{ $message }}</x-input-error>
          @enderror
        </div>


        <div class="col-span-full">
            <x-form-label for="description" >Description</x-form-label>
            <div class="mt-2">
              <textarea name="description" id="description" :value="old('description')" rows="3" class="block w-full rounded-md bg-white px-3 py-1.5 text-base text-gray-900 outline-1 -outline-offset-1 outline-gray-300 placeholder:text-gray-400 focus:outline-2 focus:-outline-offset-2 focus:outline-indigo-600 sm:text-sm/6"></textarea>
            </div>
            @error('description')
            <x-input-error class="text-red-500 text-sm">{{ $message }}</x-input-error>
          @enderror
             </div>

             </div>
    </div>


  </div>

  <div class="mt-6 flex items-center justify-end gap-x-6">
    <button type="button" class="text-sm/6 font-semibold text-gray-900">Cancel</button>
    <button type="submit" class="rounded-md bg-indigo-600 px-3 py-2 text-sm font-semibold text-white shadow-xs hover:bg-indigo-500 focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600">Create Job</button>
  </div>
</form>

</x-layout>
