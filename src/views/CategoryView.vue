<template>
    <main class="max-w-7xl mx-auto px-4 py-10">
        <h1 class="text-4xl font-bold mb-12 text-center">Nos Catégories</h1>

        <div class="space-y-16">
            <section v-for="mainCat in mainCategories" :key="mainCat.id" class="mb-12">
                <h2 class="text-3xl font-bold mb-8 text-center">{{ mainCat.title }}</h2>

                <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-6">
                    <CategoryCard v-for="category in getCategoriesByMain(mainCat.id)" :key="category.id"
                        :category="category" />
                </div>
            </section>
        </div>
    </main>
</template>

<script setup>
import CategoryCard from '../components/category/CategoryCard.vue';
import { ref } from 'vue';


const mainCategories = ref([
    { id: 1, title: 'Chaussures Homme' },
    { id: 2, title: 'Chaussures Femme' },
    { id: 3, title: 'Chaussures Enfant' }
]);

const allCategories = ref([
    {
        id: 1,
        mainCategoryId: 1,
        title: 'Chaussures de Ville',
        description: 'Classiques, élégantes pour vos journées de travail',
        image: 'https://www.podexpert.com/images/Image/pages_information/Confort/Chaussure/HommeVilleDiscover.webp'
    },
    {
        id: 2,
        mainCategoryId: 1,
        title: 'Sneakers / Sport',
        description: 'Confort et style pour la ville ou la salle',
        image: 'https://m.media-amazon.com/images/I/71A0JLglUDL._AC_UY780_.jpg'
    },
    {
        id: 3,
        mainCategoryId: 1,
        title: 'Randonnée & Outdoor',
        description: 'Prêtes pour toutes vos aventures en plein air',
        image: 'https://www.cdiscount.com/pdt2/0/9/9/4/700x700/mp54430099/rw/chaussure-randonnee-homme-impermeable-maintien-con.jpg'
    },
    {
        id: 4,
        mainCategoryId: 2,
        title: 'Talons & Escarpins',
        description: 'Élégance et féminité pour toutes occasions',
        image: 'https://gemo-gemo-fr-storage.omn.proximis.com/Imagestorage/imagesSynchro/1534/1848/e4698e4a4a274b3831eabd24c8da87c49c3ef3ca_5e6a50b7-4669-43d3-b1df-front.jpeg'
    },
    {
        id: 5,
        mainCategoryId: 2,
        title: 'Baskets Tendance',
        description: 'Style urbain et confort au quotidien',
        image: 'https://www.modress.com/cdn/shop/files/ori-basket-femme-l-opard-chic-avec-d-tails-dor-s-et-plateforme-tendance-17901_9835d9f4-408d-4291-95f4-1a8c5be9012a.jpg?v=1737629297'
    },
    {
        id: 6,
        mainCategoryId: 3,
        title: 'Chaussures École',
        description: 'Robustes et confortables pour la cour de récréation',
        image: 'https://www.minishoes.fr/2730-large_default/chaussures-ecole-garcon-bleu-marine-et-noir.jpg'
    },
    {
        id: 7,
        mainCategoryId: 3,
        title: 'Baskets Junior',
        description: 'Colorées et tendance pour les jeunes',
        image: 'https://www.zeta-shoes.com/cdn/shop/files/ZETA_KIDS_ORANGE_SIDE.webp?v=1704974801'
    }
]);

const getCategoriesByMain = (mainCategoryId) => {
    return allCategories.value.filter(cat => cat.mainCategoryId === mainCategoryId);
};
</script>