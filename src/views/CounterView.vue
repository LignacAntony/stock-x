<script setup>
import { ref } from 'vue'

let counters = ref([])

const increment = (id) => {
  counters.value.find(counter => counter.id === id).count++
}

const decrement = (id) => {
  counters.value.find(counter => counter.id === id).count--
}

const addCounter = () => {
  counters.value.push({
    count: 0,
    id: counters.value.length + 1,
  })
}
</script>

<template>
  <main>
    <div class="flex flex-col gap-4 border-2 border-gray-300 rounded-md m-4 p-4 w-1/4" v-for="{ count, id } in counters"
      :key="id">
      <h1>Compteur: {{ id }}</h1>
      <h2>Compteur {{ count }}</h2>
      <button class="bg-blue-500 text-white p-2 rounded-md" @click="increment(id)">Incrémenter</button>
      <button class="bg-red-500 text-white p-2 rounded-md" @click="decrement(id)">Décrémenter</button>
    </div>
    <button class="bg-green-500 text-white p-2 rounded-md" @click="addCounter">Ajouter un compteur</button>
  </main>
</template>
