<template>
    <div class="relative">
        <NavBar class="fixed w-full z-50"></NavBar>
        <BlogPost class="pt-32" :content="contentData" :tag="tag"></BlogPost>
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

import { ref, onMounted } from 'vue';
import { make_request } from '@/utilities/http_request';

const contentData = ref([]);


const obtenerDatos = async () => {
  try {
    const content = await make_request('portfolio/get_posts/', 'get');
    contentData.value = content;
  } catch (error) {
    console.error('Error en la petición:', error);
  }
};

const tag = {
    title: 'Explorando la Narrativa Oculta de los Datos',
    description: 'Sumérgete en mi portafolio, donde cada análisis cuenta una historia única detrás de los números. Como analista de datos apasionado, he trabajado en diversos proyectos, desde la creación de informes perspicaces hasta el desarrollo de tableros interactivos que transforman datos en decisiones estratégicas. Descubre cómo mi experiencia puede impulsar la inteligencia empresarial y desentrañar las oportunidades ocultas en tus datos.',
    tag: '2'
}

onMounted(() => {
  obtenerDatos();
});

</script>