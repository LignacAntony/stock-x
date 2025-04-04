<template>
    <main class="max-w-7xl mx-auto px-4 py-10">
        <div class="flex flex-col md:flex-row gap-8">
            <!-- Filtres -->
            <aside class="md:w-1/4">
                <h2 class="text-lg font-semibold mb-4">Filtres</h2>
                <div class="space-y-4">
                    <div>
                        <label class="block font-medium mb-1">Genre</label>
                        <select class="w-full border px-3 py-2 rounded">
                            <option>Tous</option>
                            <option>Homme</option>
                            <option>Femme</option>
                        </select>
                    </div>
                    <div>
                        <label class="block font-medium mb-1">Prix</label>
                        <input type="range" min="30" max="200" class="w-full">
                    </div>
                    <div>
                        <label class="block font-medium mb-1">Pointure</label>
                        <div class="flex flex-wrap gap-2">
                            <button class="border px-2 py-1 rounded hover:bg-gray-100">39</button>
                            <button class="border px-2 py-1 rounded hover:bg-gray-100">40</button>
                            <button class="border px-2 py-1 rounded hover:bg-gray-100">41</button>
                        </div>
                    </div>
                </div>
            </aside>

            <!-- Liste des produits -->
            <section class="flex-1">
                <h2 class="text-xl font-semibold mb-6">Chaussures pour Homme</h2>
                <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-6">
                    <div class="border rounded-2xl overflow-hidden shadow hover:shadow-md transition">
                        <img src="https://via.placeholder.com/400x300" class="w-full h-56 object-cover" alt="Chaussure">
                        <div class="p-4">
                            <h3 class="font-semibold">Sneaker Sport</h3>
                            <p class="text-gray-600 text-sm">Moderne et confortable</p>
                            <p class="font-bold mt-1">69,99 €</p>
                        </div>
                    </div>
                    <!-- Autres produits... -->
                </div>
            </section>
        </div>
    </main>
</template>

<script setup>

</script>