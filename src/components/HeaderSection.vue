<template>
  <header class="border-b shadow-sm sticky top-0 bg-white z-50">
    <div class="max-w-7xl mx-auto px-4 py-4 flex justify-between items-center">
      <h1 class="text-2xl font-bold">Chaussures Élégance</h1>
      <nav class="space-x-6 hidden md:flex">
        <router-link v-for="item in menuItems" :key="item.label" :to="item.href" class="hover:text-blue-600">
          {{ item.label }}
        </router-link>
        <router-link :to="{ name: 'checkout' }" class="hover:text-blue-600">Checkout ({{ checkoutStore.count
          }})</router-link>
      </nav>
      <button class="md:hidden">☰</button>
    </div>
  </header>
</template>

<script setup>
import { useCheckoutStore } from '@/store/useCheckoutStore';

const menuItems = [
  { label: 'Accueil', href: '/' },
  { label: 'Categories', href: '/category' },
]

const checkoutStore = useCheckoutStore()

</script>
