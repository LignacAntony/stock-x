<template>
    <router-link :to="`/category/${category.id}/list`"
        class="border rounded-xl overflow-hidden hover:shadow-md transition">
        <div class="p-4">
            <h3 class="font-semibold text-lg mb-1">{{ category.name }}</h3>
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