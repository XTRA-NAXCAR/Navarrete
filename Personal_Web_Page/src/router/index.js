import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'home',
      component: HomeView
    },
    {
      path: '/contact',
      name: 'contact',
      component: () => import ('@/views/ContactView.vue'),
    },
    {
      path: '/blog',
      name: 'blog',
      component: () => import ('@/views/BlogView.vue'),
    },
    {
      path: '/blogPost/:image/:category/:title/:description',
      name: 'blogPost',
      component: () => import ('@/views/BlogPostView.vue'),
    },
    {
      path: '/service/:title/:description/:items/:image',
      name: 'service',
      component: () => import ('@/views/ServicesView.vue'),
    },
    {
      path: '/portfolio',
      name: 'portfolio',
      component: () => import ('@/views/PortfolioView.vue'),
    },
    {
      path: '/portfolioPost/:title/:description/:dashboard ',
      name: 'portfolioPost',
      component: () => import ('@/views/PortfolioPostView.vue'),
    },
  ]
})

export default router
