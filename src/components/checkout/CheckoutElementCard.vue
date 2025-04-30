<template>
    <div class="flex items-center justify-between border-b pb-4">
        <div class="flex items-center gap-4">
            <img :src="props.image_url" class="w-20 h-20 object-cover rounded" alt="Produit">
            <div>
                <p class="font-medium">{{ props.name }}</p>
                <p class="text-gray-500 text-sm">Pointure : {{ props.quantity }}</p>
            </div>
        </div>
        <div class="text-right">
            <p class="font-bold">{{ props.price }} €</p>
            <button class="text-red-500 text-sm hover:underline mt-1"
                @click="deleteProduct(props.id)">Supprimer</button>
        </div>
    </div>
</template>

<script setup>
import { useCheckoutStore } from '@/store/useCheckoutStore';

const props = defineProps({
    id: Number,
    name: String,
    quantity: Number,
    price: Number,
    image_url: String,
})

const checkoutStore = useCheckoutStore()

const { removeProduct } = checkoutStore

const deleteProduct = (id) => {
    removeProduct(id)
}
</script>