<script setup>
import { watch } from 'vue';
import { RouterView, useRoute } from 'vue-router';

const route = useRoute()

watch(() => route.name, () => {
  window.scrollTo(0, 0);
});

</script>

<template>
  <RouterView />
</template>

<style>
@import url('https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap');

* {
    text-align: justify;
  }
</style>
