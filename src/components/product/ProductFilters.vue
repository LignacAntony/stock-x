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
import GenreFilter from './filters/GenreFilter.vue';
import PriceFilter from './filters/PriceFilter.vue';
import SizeFilter from './filters/SizeFilter.vue';
</script>