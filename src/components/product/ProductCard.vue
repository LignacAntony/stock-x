<template>
  <div class="border rounded-2xl overflow-hidden shadow hover:shadow-md transition">
    <img :src="product.image_url" class="w-full h-56 object-cover" alt="Chaussure">
    <div class="p-4">
      <h3 class="font-semibold">{{ product.name }}</h3>
      <p class="text-gray-600 text-sm">{{ product.description }}</p>
      <p class="font-bold mt-1">{{ product.price }} €</p>
      <button type="button" class="bg-blue-500 text-white px-4 py-2 rounded-md mt-2 w-full"
        @click="addProduct(props.product)">
        Ajouter au panier
      </button>
    </div>
  </div>
</template>

<script setup>
import { useCheckoutStore } from '@/store/useCheckoutStore';

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

const checkoutStore = useCheckoutStore();
const { addProduct } = checkoutStore;


</script>