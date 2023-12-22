<template>
    <div class="bg-white py-32">
      <div class="mx-auto max-w-7xl px-6 lg:px-8">
        <div class="mx-auto flex max-w-2xl flex-col items-end justify-between gap-16 lg:mx-0 lg:max-w-none lg:flex-row">
          <div class="w-full lg:flex-auto">
            <h2 class="text-3xl font-bold tracking-tight text-gray-900 sm:text-4xl">{{ $route.params.title }}</h2>
            <div v-if="$route.params.image">
              <img :src="`${$route.params.image}`" alt="" class="mt-16 aspect-[6/5] w-full rounded-2xl bg-gray-50 object-cover lg:aspect-auto lg:h-[34.5rem]" />
            </div>
            <div class="my-16 flex items-center justify-center snap-center" v-if="$route.params.dashboard" v-html="$route.params.dashboard"></div>
            <p class="mt-6 text-xl leading-8 text-gray-600" v-html="$route.params.description"></p>
          </div>
        </div>
      </div>
    </div>
  </template>
  
  <script setup>
  </script>