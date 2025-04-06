<template>
    <main class="max-w-6xl mx-auto px-4 py-10 grid md:grid-cols-2 gap-10">
        <div>{{ props.product.id }}
            <img :src="props.product.image" class="w-full rounded-xl object-cover" alt="Produit">
        </div>
        <div>
            <h2 class="text-3xl font-bold mb-4">{{ props.product.title }}</h2>
            <p class="text-gray-600 mb-4">{{ props.product.description }}</p>
            <p class="text-2xl font-bold mb-4">{{ props.product.price }} €</p>

            <div class="mb-4">
                <label class="block font-medium mb-1">Pointure</label>
                <select class="w-full border px-3 py-2 rounded">
                    <option>39</option>
                    <option>40</option>
                    <option>41</option>
                    <option>42</option>
                </select>
            </div>

            <button class="bg-blue-600 text-white px-6 py-3 rounded-xl hover:bg-blue-700 transition w-full">
                Ajouter au panier
            </button>
        </div>
    </main>
</template>

<script setup>
const props = defineProps({
    product: {
        type: Object,
        required: true,
        id: {
            type: Number,
            required: true
        },
        title: {
            type: String,
            required: true
        },
        category: {
            type: String,
            required: true
        },
        description: String,
        price: {
            type: Number,
            required: true
        },
        image: {
            type: String,
            required: true
        }
    }
});

</script>