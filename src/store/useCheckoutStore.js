import { defineStore } from 'pinia'
import { computed, ref } from 'vue'

export const useCheckoutStore = defineStore('checkout', () => {
  const products = ref([])

  const addProduct = (product) => {
    products.value.push(product)
  }

  const removeProduct = (productOrId) => {
    console.log(productOrId)
    const productId = typeof productOrId === 'object' ? productOrId.id : productOrId
    products.value = products.value.filter((p) => p.id !== productId)
  }

  const count = computed(() => products.value.length)

  return { products, addProduct, removeProduct, count }
})
