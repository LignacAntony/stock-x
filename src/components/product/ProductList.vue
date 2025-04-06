<script setup>
import ProductCard from '@/components/product/ProductCard.vue'

defineProps({
  products: {
    type: Array,
    required: true
  }
})
</script>

<template>
  <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-6">
    <ProductCard v-for="product in products" :key="product.id" :product="product" />
  </div>
</template>