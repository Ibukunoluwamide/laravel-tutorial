<x-layout>
    <x-slot:heading>Login</x-slot:heading>
  <form method="POST" action="/login">
    @csrf
  <div class="space-y-12">
 

    <div class="border-b border-gray-900/10 pb-12">

      <div class="mt-10 max-w-md space-y-4">
        <div class="sm:col-span-3">
          <x-form-label for="title" >Email</x-form-label>
          <x-form-input type="email" name="email" id="email" :value="old('email')" autocomplete="given-name"/>
          @error('email')
          <x-input-error class="text-red-500 text-sm" >{{ $message }}</x-input-error>
          @enderror
        </div>
        <div class="sm:col-span-3">
          <x-form-label for="password" >Password</x-form-label>
          <x-form-input type="password" name="password" id="password" :value="old('password')" autocomplete="given-name"/>
          @error('password')
          <x-input-error class="text-red-500 text-sm" >{{ $message }}</x-input-error>
          @enderror
        </div>

        <div class="mt-6 flex items-center justify-end gap-x-6">
          <button type="submit" class="rounded-md bg-indigo-600 px-3 py-2 text-sm font-semibold text-white shadow-xs hover:bg-indigo-500 focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600">Login</button>
        </div>
  </div>

</form>

</x-layout> 
