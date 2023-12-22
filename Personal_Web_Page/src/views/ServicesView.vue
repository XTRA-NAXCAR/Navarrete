<template>
    <div class="relative">
        <NavBar class="fixed w-full z-50"></NavBar>
        <Receive class="pt-16" :content="content"></Receive>
        <Detail></Detail>
        <Services></Services>
        <Contact></Contact>
        <Footer></Footer>
    </div>
</template>
<script setup>
import NavBar from '@/components/general/NavBar.vue';
import Receive from '@/components/general/Receive.vue';
import Detail from '@/components/services/Detail.vue';
import Services from '@/components/general/Services.vue';
import Contact from '@/components/home/Contact.vue';
import Footer from '@/components/general/Footer.vue';
import { ref, watch, onMounted } from 'vue';
import { useRoute } from 'vue-router';

const route = useRoute();

const content = ref({
  sentence: 'Desde informes a medida hasta análisis avanzado, nuestro conjunto de servicios de análisis de datos está diseñado para llevar tu comprensión empresarial al siguiente nivel.',
  title: 'Transformando Datos en Decisiones Estratégicas',
  description: 'Adéntrate en nuestra gama de servicios especializados en análisis de datos. Desde la creación de informes personalizados hasta el desarrollo de tableros interactivos con Power BI, ofrecemos soluciones que potencian la toma de decisiones. Descubre cómo nuestro enfoque analítico puede impulsar la eficiencia y la inteligencia empresarial.',
  button: 'Contáctanos',
  image: '' + route.params.image,
});

watch(() => route.params.image, (newImage) => {
  content.value.image = '' + newImage;
  window.scrollTo(0, 0);
});

onMounted(() => {
  content.value.image = '' + route.params.image;
});
</script>