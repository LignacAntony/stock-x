import { defineStore } from 'pinia'
import { computed, ref } from 'vue'
import { supabase } from '../utils/supabase'

export const useProductStore = defineStore('product', () => {
  const products = ref([])
  const loading = ref(false)
  const error = ref(null)

  const allProducts = computed(() => products.value)

  const getAllProducts = async () => {
    try {
      loading.value = true
      const { data, error: err } = await supabase.from('products').select(`
          *,
          categories:category_id (id, name)
        `)
      if (err) throw err
      products.value = data
    } catch (err) {
      error.value = err.message
      console.error('Erreur lors du chargement des produits:', err)
    } finally {
      loading.value = false
    }
  }

  const getAllProductsByCategory = async (categoryId) => {
    try {
      loading.value = true
      const { data, error: err } = await supabase
        .from('products')
        .select(
          `
          *,
          categories:category_id (id, name)
        `,
        )
        .eq('category_id', categoryId)
      if (err) throw err
      products.value = data
    } catch (err) {
      error.value = err.message
      console.error('Erreur lors du chargement des produits par catégorie:', err)
    } finally {
      loading.value = false
    }
  }

  const getPopularProducts = async () => {
    try {
      loading.value = true
      const { data, error: err } = await supabase
        .from('products')
        .select(
          `
          *,
          categories:category_id (id, name)
        `,
        )
        .order('created_at', { ascending: false })
        .limit(4)
      if (err) throw err
      products.value = data
      console.log('Produits populaires chargés avec catégories:', data)
    } catch (err) {
      error.value = err.message
      console.error('Erreur lors du chargement des produits populaires:', err)
    } finally {
      loading.value = false
    }
  }

  const getProductById = async (productId) => {
    try {
      loading.value = true
      const { data, error: err } = await supabase
        .from('products')
        .select(
          `
          *,
          categories:category_id (id, name)
        `,
        )
        .eq('id', productId)
        .single()
      if (err) throw err
      products.value = data ? [data] : []
    } catch (err) {
      error.value = err.message
      console.error('Erreur lors du chargement du produit par ID:', err)
    } finally {
      loading.value = false
    }
  }

  return {
    products,
    allProducts,
    loading,
    error,
    getAllProducts,
    getAllProductsByCategory,
    getPopularProducts,
    getProductById,
  }
})
