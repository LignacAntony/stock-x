<template>
  <main class="max-w-6xl mx-auto px-4 py-10 grid md:grid-cols-2 gap-10">
    <div>
      <img :src="product.image" class="w-full rounded-xl object-cover" alt="Produit">
    </div>
    <div>
      <h2 class="text-3xl font-bold mb-4">{{ product.title }}</h2>
      <p class="text-gray-600 mb-4">{{ product.description }}</p>
      <p class="text-2xl font-bold mb-4">{{ product.price }} €</p>

      <div class="mb-4">
        <label class="block font-medium mb-1">Pointure</label>
        <select class="w-full border px-3 py-2 rounded">
          <option>39</option>
          <option>40</option>
          <option>41</option>
          <option>42</option>
        </select>
      </div>

      <button class="bg-blue-600 text-white px-6 py-3 rounded-xl hover:bg-blue-700 transition w-full">
        Ajouter au panier
      </button>
    </div>
  </main>
</template>

<script setup>
import { useRoute } from 'vue-router';
import { ref } from 'vue';

const route = useRoute();
const productId = route.params.id;
const product = ref(null);

product.value = {
  id: parseInt(productId),
  title: "Chaussure de sport",
  category: "Sneakers",
  description: "Chaussure confortable pour toutes vos activités sportives",
  price: 89.99,
  image: "https://m.media-amazon.com/images/I/71A0JLglUDL._AC_UY780_.jpg"
};
</script>