<template>
    <div id="services" class="bg-gray-900 py-24 sm:py-32">
      <div class="mx-auto max-w-7xl px-6 lg:px-8">
        <div class="mx-auto max-w-2xl">
          <h2 class="text-3xl font-bold tracking-tight text-white sm:text-4xl">Toma Decisiones estratégicas basadas en análisis de datos, interpretación e Inteligencia de Negocios</h2>
          <p class="mt-6 text-lg leading-8 text-gray-300">Nuestros servicios te ayudarán a tener un enfoque data-driven que te permitirá que tu empresa examine y organice tus datos con el fin de atender y comprender mejor a tus clientes y tener un panorama 360 de tu empresa.</p>
        </div>
        <div class="mx-auto mt-16 max-w-2xl sm:mt-20 lg:mt-24 lg:max-w-none">
          <dl class="grid max-w-xl grid-cols-1 gap-x-8 gap-y-16 lg:max-w-none lg:grid-cols-3">
            <div v-for="service in services" class="flex flex-col">
              <dt class="text-base font-semibold leading-7 text-white">
                <div class="mb-6 flex h-10 w-10 items-center justify-center rounded-lg">
                  <img :src="`${service.icon}`" alt="..." class=" w-28" aria-hidden="true" />
                </div>
                {{ service.title }}
              </dt>
              <dd class="mt-1 flex flex-auto flex-col text-base leading-7 text-gray-300">
                <p class="flex-auto line-clamp-5">{{ service.description }}</p>
                <p class="mt-6">
                  <a class="cursor-pointer text-sm font-semibold leading-6 text-indigo-400" @click="pushRoute(service.title, service.description, service.items, service.image)">Leer más <span aria-hidden="true">→</span></a>
                </p>
              </dd>
            </div>
          </dl>
        </div>
      </div>
    </div>
  </template>
  
  <script setup>
  import { useRouter } from 'vue-router';
  import { inject } from 'vue';

  const services = inject('$services')
  const router = useRouter();


  const pushRoute = (title, description, items, image) => {
    const serializedItems = JSON.stringify(items)
    router.push({ name: 'service', params: {title, description, items: serializedItems, image} })
  }
  


  </script>