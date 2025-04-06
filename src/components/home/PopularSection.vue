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
import ProductCard from './ProductCard.vue';

const products = [
  {
    title: 'Manteau',
    price: 10,
    description: 'aaa',
    category: 'Manteau',
    image: 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQGY4JskGQUgkd4OIJGOBnawL-6P2iycaXPN0Jc1U2lGQJcapuewBfX_hXAofyMKbvvoyq7uOjc7ooF_X2N9FVlIpA4J9zWTDGj24vG-0KY7yRdRckDk5I9uVG8EYqX4De6c6E&usqp=CAc',
  },
  {
    title: 'Chaussure',
    price: 20,
    description: 'bbb',
    category: 'Chaussure',
    image: 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQGY4JskGQUgkd4OIJGOBnawL-6P2iycaXPN0Jc1U2lGQJcapuewBfX_hXAofyMKbvvoyq7uOjc7ooF_X2N9FVlIpA4J9zWTDGj24vG-0KY7yRdRckDk5I9uVG8EYqX4De6c6E&usqp=CAc',
  },
  {
    title: 'Babouche',
    price: 30,
    description: 'ccc',
    category: 'Babouche',
    image: 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQGY4JskGQUgkd4OIJGOBnawL-6P2iycaXPN0Jc1U2lGQJcapuewBfX_hXAofyMKbvvoyq7uOjc7ooF_X2N9FVlIpA4J9zWTDGj24vG-0KY7yRdRckDk5I9uVG8EYqX4De6c6E&usqp=CAc',
  }
]
</script>
