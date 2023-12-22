<template>
    <div class="bg-white py-24 sm:py-32">
      <div class="mx-auto max-w-7xl px-6 lg:px-8">
                <div class="mx-auto">
                  <h2 class="text-3xl font-bold tracking-tight text-gray-900 sm:text-4xl">{{ $route.params.title }}</h2>
                  <p class="mt-6 text-lg leading-8 text-gray-600">{{ $route.params.description }}</p>
                </div>
                <dl class="mt-10 space-y-6 divide-y divide-gray-900/10">
                  <Disclosure as="div" v-for="item in items" class="pt-6" v-slot="{ open }">
                    <dt>
                      <DisclosureButton class="flex w-full items-start justify-between text-left text-gray-900">
                        <span class="text-base font-semibold leading-7">{{ item.title }}</span>
                        <span class="ml-6 flex h-7 items-center">
                          <PlusSmallIcon v-if="!open" class="h-6 w-6" aria-hidden="true" />
                          <MinusSmallIcon v-else class="h-6 w-6" aria-hidden="true" />
                        </span>
                      </DisclosureButton>
                    </dt>
                    <DisclosurePanel as="dd" class="mt-2 pr-12">
                      <p class="text-base leading-7 text-gray-600" v-html="item.description"></p>
                    </DisclosurePanel>
                  </Disclosure>
                </dl>
      </div>
    </div>
  </template>
  
  <script setup>
  import { Disclosure, DisclosureButton, DisclosurePanel } from '@headlessui/vue'
  import { MinusSmallIcon, PlusSmallIcon } from '@heroicons/vue/24/outline'
  import { useRoute } from 'vue-router';

  const route = useRoute()
  const items = JSON.parse(route.params.items)
  </script>

