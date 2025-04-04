<template>
    <div class="flex items-center justify-between border-b pb-4">
        <div class="flex items-center gap-4">
            <img :src="props.image" class="w-20 h-20 object-cover rounded" alt="Produit">
            <div>
                <p class="font-medium">{{ props.title }}</p>
                <p class="text-gray-500 text-sm">Pointure : {{ props.quantity }}</p>
            </div>
        </div>
        <div class="text-right">
            <p class="font-bold">{{ props.price }} €</p>
            <button class="text-red-500 text-sm hover:underline mt-1" @click="deleteElement">Supprimer</button>
        </div>
    </div>
</template>

<script setup>
const props = defineProps({
    id: Number,
    title: String,
    quantity: Number,
    price: Number,
    image: String,
})

const emit = defineEmits(['deleteElement'])

const deleteElement = () => {
    emit('deleteElement', props.id)
}
</script>