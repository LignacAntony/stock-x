<template>
    <main class="max-w-4xl mx-auto px-4 py-10">
        <h2 class="text-2xl font-bold mb-6">Mon Panier</h2>
        <div class="space-y-6">
            <!-- Article -->
            <CheckoutElementCard v-for="product in productInCheckout" :key="product.id" :title="product.name"
                :quantity="product.quantity" :price="product.price" :image="product.image_url" />

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
import { computed } from 'vue';
import CheckoutElementCard from '@/components/checkout/CheckoutElementCard.vue';
import { useCheckoutStore } from '@/store/useCheckoutStore';

const checkoutStore = useCheckoutStore()
const { products: productInCheckout } = checkoutStore

const total = computed(() => {
    return productInCheckout.reduce((acc, product) => acc + product.price, 0)
})

</script>