<template>
  <div class="border rounded-2xl overflow-hidden shadow hover:shadow-md transition">
    <router-link :to="`/product/${props.product.id}`">
      <img :src="props.product.image" alt="Chaussure" class="w-full h-60 object-cover">
      <div class="p-4">
        <h4 class="font-semibold text-lg">{{ props.product.title }}</h4>
        <span class="text-gray-600 text-sm font-bold bg-green-100 px-2 py-1 rounded-full">{{ props.product.category
          }}</span>
        <p class="text-gray-600">{{ props.product.description.slice(0, 100) }}...</p>
        <p class="font-bold mt-2">{{ props.product.price }} €</p>
      </div>
    </router-link>
  </div>
</template>

<script setup>
const props = defineProps({
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
    description: {
      type: String,
      required: true
    },
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