<template>
    <div class="bg-white py-24 sm:py-32">
      <div class="mx-auto max-w-7xl px-6 lg:px-8">
        <div class="mx-auto grid max-w-2xl grid-cols-1 gap-x-8 gap-y-16 sm:gap-y-20 lg:mx-0 lg:max-w-none lg:grid-cols-3">
          <div>
            <h2 class="text-base font-semibold leading-7 text-indigo-600">Datos – Información – Conocimiento </h2>
            <p class="mt-2 text-3xl font-bold tracking-tight text-gray-900 sm:text-4xl">Conóceme</p>
            <p class="mt-6 text-base leading-7 text-gray-600 font-semibold">Apasionado por el impacto del Business Intelligence y las nuevas herramientas tecnológicas que ayudan a las empresas y emprendimientos a suministrar información para respaldar la toma de decisiones y la elaboración de nuevas estrategias. Puedo ofrecer una variedad de servicios relacionados con informes, reportes y tableros desarrollados con Power BI para ayudar a empresas, emprendimientos o personas a aprovechar al máximo esta herramienta de análisis de datos.</p>
          </div>
          <dl class="col-span-2 grid grid-cols-1 gap-x-8 gap-y-10 text-base leading-7 text-gray-600 sm:grid-cols-2 lg:gap-y-16">
            <div v-for="feature in features" :key="feature.name" class="relative pl-9">
              <dt class="font-semibold text-gray-900">
                <CheckIcon class="absolute left-0 top-1 h-5 w-5 text-indigo-500" aria-hidden="true" />
                {{ feature.name }}
              </dt>
              <dd class="mt-2">{{ feature.description }}</dd>
            </div>
          </dl>
        </div>
      </div>
    </div>
  </template>
  
  <script setup>
  import { CheckIcon } from '@heroicons/vue/20/solid'
  
  const features = [
    {
      name: 'Informes Personalizados',
      description: 'Creación de informes adaptados a las necesidades específicas, abarcando áreas como finanzas, ventas y análisis de marketing.',
    },
    { 
      name: 'Tableros Interactivos en Power BI', 
      description: 'Desarrollo de tableros que permiten la exploración intuitiva de datos, integrándose con diversas fuentes para ofrecer una visión completa y actualizada.',
    },
    {
      name: 'Análisis de Datos Avanzado', 
      description: 'Utilización de Power BI para análisis avanzados, como predictivos, segmentación de clientes y evaluación de tendencias a través de visualizaciones dinámicas.',
    },
    {
      name: 'Automatización de Informes', 
      description: 'Ayuda en la automatización de la generación y distribución de informes con Power BI, mejorando la eficiencia y asegurando la entrega oportuna de información clave.',
    },
    {
      name: 'Capacitación y Soporte', 
      description: 'Oferta de servicios de capacitación para equipos internos y soporte continuo para resolver problemas, optimizar informes y guiar en la interpretación de datos.',
    },
    {
      name: 'Integración con Otras Herramientas', 
      description: 'Integración de Power BI con sistemas como ERP, bases de datos específicas o aplicaciones personalizadas.',
    },
    {
      name: 'Diseño Estético de Informes', 
      description: 'Enfoque en el diseño estético para hacer informes y tableros visualmente atractivos y fácilmente comprensibles.',
    },
    {
      name: 'Análisis de Rendimiento Empresarial', 
      description: 'Evaluación del rendimiento general de las empresas mediante informes y tableros que resaltan KPIs y métricas clave, incluyendo análisis financiero y seguimiento de objetivos.',
    },
];

  </script>