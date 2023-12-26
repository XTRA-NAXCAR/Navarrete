<template>
    <div class="relative">
        <NavBar class="fixed w-full z-50"></NavBar>
        <Receive class="pt-16" :content="content"></Receive>
        <Contact></Contact>
        <Footer></Footer>
    </div>
</template>
<script setup>
import NavBar from '@/components/general/NavBar.vue';
import Receive from '@/components/general/Receive.vue';
import Contact from '@/components/home/Contact.vue';
import Footer from '@/components/general/Footer.vue';
import image from '@/assets/images/contact/imagen2.gif';

const content = {
    sentence: 'Deja que tus ideas toquen base. Estamos listos para escucharte y convertir tus visiones en realidad.',
    title: 'Conéctate con Nosotros',
    description: 'Explora nuevas posibilidades al ponerte en contacto con nuestro equipo. Estamos aquí para responder a tus preguntas, discutir ideas y colaborar en la realización de proyectos impactantes. ¡Tu próximo paso hacia el éxito comienza con un mensaje!',
    button: 'Conoce Más',
    image: image,
}
</script>