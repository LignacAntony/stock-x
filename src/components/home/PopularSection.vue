<template>
  <section class="py-12">

    <div class="max-w-7xl mx-auto px-4">
      <h3 class="text-2xl font-semibold mb-8 text-center">Produits en vedette</h3>
      <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-6">
        <ProductCard v-for="product in products" :key="product.id" :product="product" />

      </div>
    </div>
  </section>
</template>

<script setup>
import { ref } from 'vue';
import ProductCard from './ProductCard.vue';

const products = ref([]);
fetch('https://fakestoreapi.com/products')
  .then(response => response.json())
  .then(data => {
    products.value = data;
  });
</script>
