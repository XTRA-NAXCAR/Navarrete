<template>
    <header class="bg-white">
      <nav class="mx-auto flex max-w-none items-center justify-between p-6 lg:px-8 xl:mx-10" aria-label="Global">
        <div class="cursor-pointer flex lg:flex-1 items-center" @click="action('home')">
          <img class="h-16" src="@/assets/images/general/elephant-icon.png" alt="Your Company" />
          <span class="inline-block align-middle sm:text-sm md:text-base lg:text-lg xl:text-xl 2xl:text-2xl name-font text-center">
            Santiago Fernando Navarrete Córdova
          </span>
        </div>

        <div class="flex lg:hidden">
          <button type="button" class="-m-2.5 inline-flex items-center justify-center rounded-md p-2.5 text-gray-700" @click="mobileMenuOpen = true">
            <span class="sr-only">Open main menu</span>
            <Bars3Icon class="h-6 w-6" aria-hidden="true" />
          </button>
        </div>
        <PopoverGroup class="hidden lg:flex lg:gap-x-24">
          <a @click="action('portfolio')" class="text-sm font-semibold leading-6 text-gray-900">
            <button class="cta">
              <span>Portafolio</span>

            </button>
          </a>
          <Popover class="relative flex items-center">
            <PopoverButton class="flex items-center  gap-x-1 text-sm font-semibold leading-6 text-gray-900">
              Servicios
              <ChevronDownIcon class="h-5 w-5 flex-none text-gray-400" aria-hidden="true" />
            </PopoverButton>
  
            <transition enter-active-class="transition ease-out duration-200" enter-from-class="opacity-0 translate-y-1" enter-to-class="opacity-100 translate-y-0" leave-active-class="transition ease-in duration-150" leave-from-class="opacity-100 translate-y-0" leave-to-class="opacity-0 translate-y-1">
              <PopoverPanel class="absolute -left-8 top-full z-10 mt-3 w-screen max-w-md overflow-hidden rounded-3xl bg-white shadow-lg ring-1 ring-gray-900/5">
                <div class="p-4">
                  <div @click="action('service', service.title, service.description, service.items, service.image)" v-for="service in services" class="group relative flex items-center gap-x-6 rounded-lg p-4 text-sm leading-6 hover:bg-gray-50">
                    <div class="flex h-11 w-11 flex-none items-center justify-center rounded-lg bg-gray-50 group-hover:bg-white">
                      <img :src="`${service.icon}`" alt="..." class="h-6 w-6"/>
                    </div>
                    <div class="flex-auto">
                      <a class="block font-semibold text-gray-900">
                        {{ service.title }}
                        <span class="absolute inset-0" />
                      </a>
                      <p class="mt-1 line-clamp-2 text-gray-600">{{ service.description }}</p>
                    </div>
                  </div>
                </div>
                <div class="grid grid-cols-2 divide-x divide-gray-900/5 bg-gray-50">
                  <a v-for="item in callsToAction" @click="action(item.href)" class="flex items-center justify-center gap-x-2.5 p-3 text-sm font-semibold leading-6 text-gray-900 hover:bg-gray-100">
                    <component :is="item.icon" class="h-5 w-5 flex-none text-gray-400" aria-hidden="true" />
                    {{ item.title }}
                  </a>
                </div>
              </PopoverPanel>
            </transition>
          </Popover>
  
          <a @click="action('blog')" class="cursor-pointer flex items-center text-sm font-semibold leading-6 text-gray-900">Blog</a>
          <a @click="action('contact')" class="cursor-pointer flex items-center text-sm font-semibold leading-6 text-gray-900">Contacto</a>
        </PopoverGroup>
      </nav>
      <Dialog as="div" class="lg:hidden" @close="mobileMenuOpen = false" :open="mobileMenuOpen">
        <div class="fixed inset-0 z-10" />
        <DialogPanel class="fixed inset-y-0 right-0 z-10 w-full overflow-y-auto bg-white px-6 py-6 sm:max-w-sm sm:ring-1 sm:ring-gray-900/10">
          <div class="flex items-center justify-between">
            <div @click="action('home')" class="-m-1.5 p-1.5 flex">
              <span class="sr-only">Your Company</span>
              <img class="h-16" src="@/assets/images/general/elephant-icon.png" alt="Your Company" />
              <span class="inline-block align-middle sm:text-sm md:text-base lg:text-lg xl:text-xl 2xl:text-2xl name-font text-center">
                Santiago Fernando Navarrete Córdova
              </span>
            </div>
            <button type="button" class="-m-2.5 rounded-md p-2.5 text-gray-700" @click="mobileMenuOpen = false">
              <span class="sr-only">Close menu</span>
              <XMarkIcon class="h-6 w-6" aria-hidden="true" />
            </button>
          </div>
          <div class="mt-6 flow-root">
            <div class="-my-6 divide-y divide-gray-500/10">
              <div class="space-y-2 py-6">
                <a @click="action('portfolio')" class="-mx-3 block rounded-lg px-3 py-2 text-base font-semibold leading-7 text-gray-900 hover:bg-gray-50">Portafolio</a>
                <Disclosure as="div" class="-mx-3" v-slot="{ open }">
                  <DisclosureButton class="flex w-full items-center justify-between rounded-lg py-2 pl-3 pr-3.5 text-base font-semibold leading-7 text-gray-900 hover:bg-gray-50">
                    Servicios
                    <ChevronDownIcon :class="[open ? 'rotate-180' : '', 'h-5 w-5 flex-none']" aria-hidden="true" />
                  </DisclosureButton>
                  <DisclosurePanel class="mt-2 space-y-2">
                    <DisclosureButton @click="action('service', item.title, item.description, item.items, item.image)" v-for="item in services" class="block rounded-lg py-2 pl-6 pr-3 text-sm font-semibold leading-7 text-gray-900 hover:bg-gray-50">{{ item.title }}</DisclosureButton>
                    <DisclosureButton @click="action(item.href)" v-for="item in callsToAction" class="block rounded-lg py-2 pl-6 pr-3 text-sm font-semibold leading-7 text-gray-900 hover:bg-gray-50">{{ item.title }}</DisclosureButton>
                  </DisclosurePanel>
                </Disclosure>
                <a @click="action('blog')" class="-mx-3 block rounded-lg px-3 py-2 text-base font-semibold leading-7 text-gray-900 hover:bg-gray-50">Blog</a>
                <a @click="action('contact')" class="-mx-3 block rounded-lg px-3 py-2 text-base font-semibold leading-7 text-gray-900 hover:bg-gray-50">Contacto</a>
              </div>
            </div>
          </div>
        </DialogPanel>
      </Dialog>
    </header>
  </template>
  
  <script setup>
  import { ref, inject } from 'vue'
  import { useRouter } from 'vue-router'
  import {
    Dialog,
    DialogPanel,
    Disclosure,
    DisclosureButton,
    DisclosurePanel,
    Popover,
    PopoverButton,
    PopoverGroup,
    PopoverPanel,
  } from '@headlessui/vue'
  import {
    Bars3Icon,
    XMarkIcon,
  } from '@heroicons/vue/24/outline'
  import { ChevronDownIcon, PhoneIcon, PlayCircleIcon } from '@heroicons/vue/20/solid'


  const services = inject('$services')
  const router = useRouter();

  const action = (view, title, description, items, image) => {
    if (view === 'service'){
      const serializedItems = JSON.stringify(items)
      router.push({ name: view, params: {title, description, items: serializedItems, image} })
    }
    else{
      router.push({ name: view})
    }
  }

  const callsToAction = [
    { title: '¿Que tal un café?', href: 'blog', icon: PlayCircleIcon },
    { title: 'Contactame', href: 'contact', icon: PhoneIcon },
  ]
  
  const mobileMenuOpen = ref(false)
  </script>

<style scoped>

.name-font{
  font-family: 'Bebas Neue', sans-serif;
  font-weight: 400;
}

.cta {
 position: relative;
 margin: auto;
 padding: 12px 18px;
 transition: all 0.2s ease;
 border: none;
 background: none;
}

.cta:before {
 content: "";
 position: absolute;
 top: 0;
 left: 0;
 display: block;
 border-radius: 50px;
 background: #b1dae7;
 width: 45px;
 height: 45px;
 transition: all 0.3s ease;
}

.cta span {
 position: relative;
 font-family: "Ubuntu", sans-serif;
 font-size: 18px;
 font-weight: 700;
 letter-spacing: 0.05em;
 color: #234567;
}

.cta svg {
 position: relative;
 top: 0;
 margin-left: 10px;
 fill: none;
 stroke-linecap: round;
 stroke-linejoin: round;
 stroke: #234567;
 stroke-width: 2;
 transform: translateX(-5px);
 transition: all 0.3s ease;
}

.cta:hover:before {
 width: 100%;
 background: #b1dae7;
}

.cta:hover svg {
 transform: translateX(0);
}

.cta:active {
 transform: scale(0.95);
}
</style>