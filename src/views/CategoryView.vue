<template>
    <main class="max-w-7xl mx-auto px-4 py-10">
        <h2 class="text-3xl font-bold mb-8 text-center">Chaussures Homme</h2>

        <section class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-6">
            <!-- Sous-catégorie -->
            <a href="#" class="block border rounded-2xl overflow-hidden shadow hover:shadow-md transition">
                <img src="https://via.placeholder.com/400x250" alt="Ville" class="w-full h-48 object-cover">
                <div class="p-4">
                    <h3 class="font-semibold text-lg">Chaussures de Ville</h3>
                    <p class="text-gray-600 text-sm">Classiques, élégantes pour vos journées de travail</p>
                </div>
            </a>

            <a href="#" class="block border rounded-2xl overflow-hidden shadow hover:shadow-md transition">
                <img src="https://via.placeholder.com/400x250" alt="Sport" class="w-full h-48 object-cover">
                <div class="p-4">
                    <h3 class="font-semibold text-lg">Sneakers / Sport</h3>
                    <p class="text-gray-600 text-sm">Confort et style pour la ville ou la salle</p>
                </div>
            </a>

            <a href="#" class="block border rounded-2xl overflow-hidden shadow hover:shadow-md transition">
                <img src="https://via.placeholder.com/400x250" alt="Randonnée" class="w-full h-48 object-cover">
                <div class="p-4">
                    <h3 class="font-semibold text-lg">Randonnée & Outdoor</h3>
                    <p class="text-gray-600 text-sm">Prêtes pour toutes vos aventures en plein air</p>
                </div>
            </a>
            <!-- Ajoute plus de sous-catégories si besoin -->
        </section>
    </main>
</template>

<script setup>
import { ref } from 'vue';

const categories = ref([]);

fetch('https://fakestoreapi.com/products')
    .then(response => response.json())
    .then(data => {
        categories.value = data.map(product => product.category);
        console.log(categories.value);
    });
</script>