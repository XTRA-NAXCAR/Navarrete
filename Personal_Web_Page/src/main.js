import '@/assets/styles/index.css'
import { createApp, provide } from 'vue'
import { createPinia } from 'pinia'
import App from './App.vue'
import router from './router'
import { make_request } from '@/utilities/http_request.js';

(async () => {
  const app = createApp(App)

  const servicesPromise = await make_request('services/get_services/', 'get');
  const blogPromise = await make_request('blog/get_data/', 'get');


  app.provide('$services', servicesPromise);
  app.provide('$blog', blogPromise);

  app.use(createPinia())
  app.use(router)

  app.mount('#app') 
})();
