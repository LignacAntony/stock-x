<template>
  <aside class="md:w-1/4">
    <h2 class="text-lg font-semibold mb-4">Filtres</h2>
    <div class="space-y-4">
      <GenreFilter />
      <PriceFilter />
      <SizeFilter />
    </div>
  </aside>
</template>

<script setup>
import GenreFilter from './product/filters/GenreFilter.vue';
import PriceFilter from './product/filters/PriceFilter.vue';
import SizeFilter from './product/filters/SizeFilter.vue';
</script>