<template>
  <header class="border-b shadow-sm sticky top-0 bg-white z-50">
    <div class="max-w-7xl mx-auto px-4 py-4 flex justify-between items-center">
      <h1 class="text-2xl font-bold">Chaussures Élégance</h1>
      <nav class="space-x-6 hidden md:flex">
        <a v-for="item in menuItems" :key="item.label" :href="item.href" class="hover:text-blue-600">
          {{ item.label }}
        </a>
      </nav>
      <button class="md:hidden">☰</button>
    </div>
  </header>
</template>

<script setup>
const menuItems = [
  { label: 'Accueil', href: '/' },
  { label: 'Categories', href: '/category' },
  { label: 'Checkout', href: '/checkout' },
]
</script>
