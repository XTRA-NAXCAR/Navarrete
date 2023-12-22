<template>
    <div class="bg-white pb-24 sm:pb-32">
      <div class="mx-auto max-w-7xl px-6 lg:px-8">
        <div class="mx-auto max-w-2xl text-center">
          <h2 class="text-3xl font-bold tracking-tight text-gray-900 sm:text-4xl">{{ tag.title }}</h2>
          <p class="mt-2 text-lg leading-8 text-gray-600">{{ tag.description }}</p>
        </div>
        <div class="mx-auto mt-16 grid max-w-2xl grid-cols-1 gap-x-8 gap-y-20 lg:mx-0 lg:max-w-none lg:grid-cols-3">
          <article v-for="post in filteredContent" :key="post.id" class="flex flex-col items-start justify-between">
            <div class="relative w-full">
              <img :src="`${post.image}`" alt="" class="aspect-[16/9] w-full rounded-2xl bg-gray-100 object-cover sm:aspect-[2/1] lg:aspect-[3/2]" />
              <div class="absolute inset-0 rounded-2xl ring-1 ring-inset ring-gray-900/10" />
            </div>
            <div class="max-w-xl">
              <div v-if="post.category" class="mt-8 flex items-center gap-x-4 text-xs">
                <a @click="filterByCategory(post.category.id)" class="cursor-pointer relative z-10 rounded-full bg-gray-50 px-3 py-1.5 font-medium text-gray-600 hover:bg-gray-100">{{ post.category.name }}</a>
              </div>
              <div class="group relative">
                <h3 class="cursor-pointer mt-3 text-lg font-semibold leading-6 text-gray-900 group-hover:text-gray-600">
                  <a v-if="tag.tag === '1'" @click="pushRoute(post.image, post.category.name, post.title, post.description)">
                    <span class="absolute inset-0" />
                    {{ post.title }}
                    <span aria-hidden="true">→</span>
                  </a>
                  <a v-if="tag.tag === '2'" @click="pushRoute(post.title, post.description, post.dashboard)">
                    <span class="absolute inset-0" />
                    {{ post.title }}
                  </a>
                </h3>
                <p class="mt-5 line-clamp-3 text-sm leading-6 text-gray-600">{{ post.description }}</p>
              </div>
            </div>
          </article>
        </div>
      </div>
    </div>
  </template>
  
  <script setup>
  import { useRouter } from 'vue-router';
  import { ref } from 'vue';

  const { content, tag } = defineProps(['content', 'tag']);
  const filteredContent = ref(content.reverse());
  const router = useRouter();

  const pushRoute = (value_1, value_2, value_3, value_4) => {
    if (tag.tag === '1') {
      router.push({ name: 'blogPost', params: {
        image: value_1, 
        category: value_2,
        title: value_3, 
        description: value_4
      }});
    }
    else if (tag.tag === '2') {
      router.push({ name: 'portfolioPost', params: {
        title: value_1, 
        description: value_2, 
        dashboard: value_3,
      }});
    }
  }

  const filterByCategory = (categoryId) => {
    filteredContent.value = content.filter(post => post.category.id === categoryId);
  }

  </script>