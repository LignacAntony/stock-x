<template>
    <main class="max-w-7xl mx-auto px-4 py-10">
        <div class="flex flex-col md:flex-row gap-8">
            <!-- Filtres -->
            <ProductFilters />

            <!-- Liste des produits -->
            <section class="flex-1">
                <h2 class="text-xl font-semibold mb-6">Chaussures pour Homme</h2>
                <ProductList :products="filteredProducts" />
            </section>
        </div>
    </main>
</template>

<script setup>
import { ref, computed } from 'vue';
import { useRoute } from 'vue-router';
import ProductList from '@/components/product/ProductList.vue';
import ProductFilters from '@/components/product/ProductFilters.vue';

const route = useRoute();
const categoryParam = computed(() => route.query.category || '');

const products = ref([
    {
        id: 1,
        title: 'Chaussure de ville homme',
        category: 'Chaussures de Ville',
        description: 'Élégantes pour vos journées de travail, confortables pour vos déplacements quotidiens',
        price: 79.99,
        image: 'https://www.podexpert.com/images/Image/pages_information/Confort/Chaussure/HommeVilleDiscover.webp'
    },
    {
        id: 2,
        title: 'Sneaker sport homme',
        category: 'Sneakers / Sport',
        description: 'Confort et style pour la ville ou la salle de sport, design tendance',
        price: 89.99,
        image: 'https://m.media-amazon.com/images/I/71A0JLglUDL._AC_UY780_.jpg'
    },
    {
        id: 3,
        title: 'Chaussure de randonnée',
        category: 'Randonnée & Outdoor',
        description: 'Imperméables et robustes pour toutes vos aventures en plein air',
        price: 119.99,
        image: 'https://www.cdiscount.com/pdt2/0/9/9/4/700x700/mp54430099/rw/chaussure-randonnee-homme-impermeable-maintien-con.jpg'
    },
    {
        id: 4,
        title: 'Escarpins noirs',
        category: 'Talons & Escarpins',
        description: 'Élégance et féminité pour toutes occasions, hauteur parfaite pour le confort',
        price: 69.99,
        image: 'https://gemo-gemo-fr-storage.omn.proximis.com/Imagestorage/imagesSynchro/1534/1848/e4698e4a4a274b3831eabd24c8da87c49c3ef3ca_5e6a50b7-4669-43d3-b1df-front.jpeg'
    },
    {
        id: 5,
        title: 'Baskets tendance femme',
        category: 'Baskets Tendance',
        description: 'Style urbain et confort au quotidien, suivez les dernières tendances',
        price: 59.99,
        image: 'https://www.modress.com/cdn/shop/files/ori-basket-femme-l-opard-chic-avec-d-tails-dor-s-et-plateforme-tendance-17901_9835d9f4-408d-4291-95f4-1a8c5be9012a.jpg?v=1737629297'
    }
]);

const filteredProducts = computed(() => {
    if (!categoryParam.value) return products.value;
    return products.value.filter(product => product.category === categoryParam.value);
});
</script>