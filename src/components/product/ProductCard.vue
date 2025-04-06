<template>
  <div class="border rounded-2xl overflow-hidden shadow hover:shadow-md transition">
    <img :src="product.image" class="w-full h-56 object-cover" alt="Chaussure">
    <div class="p-4">
      <h3 class="font-semibold">{{ product.title }}</h3>
      <p class="text-gray-600 text-sm">{{ product.description }}</p>
      <p class="font-bold mt-1">{{ product.price }} €</p>
    </div>
  </div>
</template>

<script setup>
defineProps({
  product: {
    type: Object,
    required: true,
    id: {
      type: Number,
      required: true
    },
    title: {
      type: String,
      required: true
    },
    category: {
      type: String,
      required: true
    },
    description: String,
    price: {
      type: Number,
      required: true
    },
    image: {
      type: String,
      required: true
    }
  }
});

</script>