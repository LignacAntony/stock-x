<template>
  <div class="border rounded-2xl overflow-hidden shadow hover:shadow-md transition">
    <router-link :to="`/product/${props.product.id}`">
      <img :src="props.product.image_url" :alt="props.product.name" class="w-full h-60 object-cover">
    </router-link>

    <div class="p-4">
      <h4 class="font-semibold text-lg">{{ props.product.name }}</h4>
      <span class="text-gray-600 text-sm font-bold bg-green-100 px-2 py-1 rounded-full">
        {{ getCategoryName() }}
      </span>
      <p class="text-gray-600">{{ getDescription(props.product.description) }}</p>
      <p class="font-bold mt-2">{{ props.product.price }} €</p>
      <button type="button" class="bg-blue-500 text-white px-4 py-2 rounded-md mt-2 w-full"
        @click="addProduct(props.product)">
        Ajouter au panier
      </button>
    </div>
  </div>
</template>

<script setup>
import { useCheckoutStore } from '@/store/useCheckoutStore';

const props = defineProps({
  product: {
    type: Object,
    required: true
  }
});

const getDescription = (desc) => {
  if (!desc) return 'Aucune description disponible';
  return desc.length > 100 ? `${desc.slice(0, 100)}...` : desc;
};

const getCategoryName = () => {
  if (props.product.categories && props.product.categories.name) {
    return props.product.categories.name;
  }
  return props.product.category_id || 'Catégorie inconnue';
};

const checkoutStore = useCheckoutStore();
const { addProduct } = checkoutStore;

</script>