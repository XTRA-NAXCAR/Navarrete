<template>
    <div class="relative">
        <NavBar class="fixed w-full z-50"></NavBar>
        <BlogPost class="pt-32" :content="blog" :tag="tag"></BlogPost>
        <Services></Services>
        <Contact></Contact>
        <Footer></Footer>
    </div>
</template>

<script setup>
import NavBar from '@/components/general/NavBar.vue';
import BlogPost from '@/components/general/BlogPost.vue';
import Services from '@/components/general/Services.vue';
import Contact from '@/components/home/Contact.vue';
import Footer from '@/components/general/Footer.vue';

import { inject } from 'vue';



const blog = inject('$blog');
const tag = {
  title: 'Desde Mi Blog',
  description: 'Aprende como los datos de tu empresa pueden potenciar tu negocio y como ellos mueven el mundo.',
  tag: '1',
}

</script>