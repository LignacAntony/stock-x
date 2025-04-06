import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import CounterView from '../views/CounterView.vue'
import ProductView from '../views/ProductView.vue'
import CategoryView from '../views/CategoryView.vue'
import CategoryListView from '../views/CategoryListView.vue'
import CheckoutView from '../views/CheckoutView.vue'
const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'home',
      component: HomeView,
    },
    {
      path: '/counter',
      name: 'counter',
      component: CounterView,
    },
    {
      path: '/product/:id',
      name: 'product',
      component: ProductView,
    },
    {
      path: '/category',
      name: 'category',
      component: CategoryView,
    },
    {
      path: '/category/:id/list',
      name: 'category_list',
      component: CategoryListView,
    },
    {
      path: '/checkout',
      name: 'checkout',
      component: CheckoutView,
    },
  ],
})

export default router
