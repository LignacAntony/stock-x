<template>
    <main class="max-w-4xl mx-auto px-4 py-10">
        <h2 class="text-2xl font-bold mb-6">Mon Panier</h2>
        <div class="space-y-6">
            <!-- Article -->
            <CheckoutElementCard v-for="product in products" :key="product.id" :title="product.title"
                :quantity="product.quantity" :price="product.price" :image="product.image"
                @deleteElement="deleteElement(product.id)" />


            <!-- Résumé commande -->
            <div class="text-right mt-10">
                <p class="text-lg font-semibold">Total : <span class="text-blue-600">{{ total }} €</span></p>
                <button
                    class="mt-4 bg-blue-600 text-white px-6 py-3 rounded-xl hover:bg-blue-700 transition">Commander</button>
            </div>
        </div>
    </main>
</template>

<script setup>
import { ref, computed } from 'vue';
import CheckoutElementCard from '@/components/checkout/CheckoutElementCard.vue';
const products = ref([
    {
        id: 1,
        title: 'Chaussure Cuir',
        quantity: 1,
        price: 89.99,
        image: 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQGY4JskGQUgkd4OIJGOBnawL-6P2iycaXPN0Jc1U2lGQJcapuewBfX_hXAofyMKbvvoyq7uOjc7ooF_X2N9FVlIpA4J9zWTDGj24vG-0KY7yRdRckDk5I9uVG8EYqX4De6c6E&usqp=CAc',
    },
    {
        id: 2,
        title: 'Chaussure Cuir',
        quantity: 1,
        price: 89.99,
        image: 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQGY4JskGQUgkd4OIJGOBnawL-6P2iycaXPN0Jc1U2lGQJcapuewBfX_hXAofyMKbvvoyq7uOjc7ooF_X2N9FVlIpA4J9zWTDGj24vG-0KY7yRdRckDk5I9uVG8EYqX4De6c6E&usqp=CAc',
    },
    {
        id: 3,
        title: 'Chaussure Cuir',
        quantity: 1,
        price: 49.99,
        image: 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQGY4JskGQUgkd4OIJGOBnawL-6P2iycaXPN0Jc1U2lGQJcapuewBfX_hXAofyMKbvvoyq7uOjc7ooF_X2N9FVlIpA4J9zWTDGj24vG-0KY7yRdRckDk5I9uVG8EYqX4De6c6E&usqp=CAc',
    },
])

const total = computed(() => {
    return products.value.reduce((acc, product) => acc + product.price, 0)
})

const deleteElement = (id) => {
    products.value = products.value.filter(product => product.id !== id)
}
</script>