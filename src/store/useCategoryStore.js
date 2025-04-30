import { defineStore } from 'pinia'
import { ref, computed } from 'vue'
import { supabase } from '@/utils/supabase'

export const useCategoryStore = defineStore('category', () => {
  const categories = ref([])
  const loading = ref(false)
  const error = ref(null)

  const allCategories = computed(() => categories.value)

  const getAllCategories = async () => {
    try {
      loading.value = true
      const { data, error: err } = await supabase.from('categories').select('*')
      if (err) throw err
      categories.value = data
    } catch (err) {
      error.value = err.message
      console.error('Erreur lors du chargement des catégories:', err)
    } finally {
      loading.value = false
    }
  }

  const getCategoryById = async (id) => {
    try {
      loading.value = true
      const { data, error: err } = await supabase.from('categories').select('*').eq('id', id)
      if (err) throw err
      categories.value = data
    } catch (err) {
      error.value = err.message
      console.error('Erreur lors du chargement de la catégorie:', err)
    } finally {
      loading.value = false
    }
  }

  return {
    categories,
    allCategories,
    getAllCategories,
    getCategoryById,
    loading,
    error,
  }
})
