<template>
    <main class="max-w-7xl mx-auto px-4 py-10">
        <h1 class="text-4xl font-bold mb-12 text-center">Nos Catégories</h1>

        <div class="space-y-16">
            <!-- <section v-for="mainCat in mainCategories" :key="mainCat.id" class="mb-12">
                <h2 class="text-3xl font-bold mb-8 text-center">{{ mainCat.title }}</h2>

                <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-6">
                    <CategoryCard v-for="category in getCategoriesByMain(mainCat.id)" :key="category.id"
                        :category="category" />
                </div>
            </section> -->
            <CategoryCard v-for="category in mainCategories" :key="category.id" :category="category" />
        </div>
    </main>
</template>

<script setup>
import CategoryCard from '../components/category/CategoryCard.vue';
import { computed, onMounted } from 'vue';
import { useCategoryStore } from '@/store/useCategoryStore';

const categoryStore = useCategoryStore();
const mainCategories = computed(() => categoryStore.allCategories);

onMounted(async () => {
    await categoryStore.getAllCategories();
});
</script>