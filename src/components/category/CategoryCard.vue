<template>
    <router-link :to="`/category-filter?category=${category.title}`"
        class="border rounded-xl overflow-hidden hover:shadow-md transition">
        <img :src="category.image" alt="Catégorie" class="w-full h-52 object-cover">
        <div class="p-4">
            <h3 class="font-semibold text-lg mb-1">{{ category.title }}</h3>
            <p class="text-gray-600 text-sm">{{ category.description }}</p>
        </div>
    </router-link>
</template>

<script setup>
defineProps({
    category: {
        type: Object,
        required: true
    }
});
</script>