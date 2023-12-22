<template>
    <div class="relative">
        <NavBar class="fixed w-full z-50"></NavBar>
        <Post></Post>
        <Contact></Contact>
        <Footer></Footer>
    </div>
</template>
<script setup>
import NavBar from '@/components/general/NavBar.vue';
import Post from '@/components/blog/Post.vue';
import Contact from '@/components/home/Contact.vue';
import Footer from '@/components/general/Footer.vue';

</script>