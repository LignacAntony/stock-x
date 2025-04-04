<script setup>
import { RouterView } from 'vue-router'
import Header from '@/components/HeaderSection.vue'
import Footer from '@/components/FooterSection.vue'
</script>

<template>
  <Header />

  <RouterView />

  <Footer />
</template>
