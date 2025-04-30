<template>
  <section class="py-12">
    <div class="max-w-7xl mx-auto px-4">
      <h3 class="text-2xl font-semibold mb-8 text-center">Produits en vedette</h3>
      <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-6">
        <div v-if="loading" class="col-span-4 text-center py-8">
          Chargement des produits...
        </div>
        <div v-else-if="!products.length" class="col-span-4 text-center py-8">
          Aucun produit en vedette disponible pour le moment.
        </div>
        <ProductCard v-else v-for="product in products" :key="product.id" :product="product" />
      </div>
    </div>
  </section>
</template>

<script setup>
import ProductCard from './ProductCard.vue';
import { useProductStore } from '@/store/useProductStore';
import { onMounted, computed } from 'vue';

const productStore = useProductStore();
const loading = computed(() => productStore.loading);
const products = computed(() => productStore.allProducts);

onMounted(async () => {
  await productStore.getPopularProducts();
  console.log("Produits populaires chargés:", products.value);
  console.log("Nombre de produits:", products.value ? products.value.length : 0);
});
</script>
