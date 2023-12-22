<script setup>
import NavBar from '@/components/general/NavBar.vue';
import Presentation from '@/components/home/Presentation.vue';
import Services from '@/components/general/Services.vue';
import AboutUs from '@/components/home/AboutUs.vue'
import Difference from '@/components/home/Difference.vue';
import BlogPost from '@/components/general/BlogPost.vue';
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

<template>
  <div>
    <div class="relative">
        <NavBar class="fixed w-full z-50"></NavBar>
        <Presentation class="pt-16"></Presentation>
        <Services></Services>
        <AboutUs></AboutUs>
        <Difference></Difference>
        <BlogPost  :content="blog" :tag="tag"></BlogPost>
        <Contact></Contact>
        <Footer></Footer>
    </div>
  </div>
</template>


