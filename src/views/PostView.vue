<template>
  <div class="post">
    <section class="post-header">
      <div class="container">
        <button class="back-btn" @click="goBack">
          <ArrowLeft /> 返回
        </button>
        <h1>{{ post.title }}</h1>
        <p class="post-meta">
          {{ post.date }} · {{ post.author }}
        </p>
        <div class="post-tags">
          <span 
            v-for="tag in post.tags" 
            :key="tag" 
            class="tag"
          >
            {{ tag }}
          </span>
        </div>
      </div>
    </section>

    <section class="post-content">
      <div class="container">
        <div class="post-body">
          <p>{{ post.content }}</p>
          <!-- 这里可以添加更多内容，比如代码块、图片等 -->
        </div>
      </div>
    </section>
  </div>
</template>

<script setup>
import { computed } from 'vue'
import { useRoute, useRouter } from 'vue-router'
import { useBlogStore } from '../stores/blog'
import { ArrowLeft } from 'lucide-vue-next'

const route = useRoute()
const router = useRouter()
const blogStore = useBlogStore()

const post = computed(() => {
  return blogStore.getPostById(route.params.id) || {
    title: '文章不存在',
    content: '抱歉，该文章不存在或已被删除。',
    author: '系统',
    date: new Date().toISOString().split('T')[0],
    tags: []
  }
})

const goBack = () => {
  router.back()
}
</script>

<style scoped>
.post {
  min-height: 100vh;
  background: var(--bg-light);
}

.post-header {
  background: white;
  padding: 3rem 2rem;
  border-bottom: 1px solid var(--border-color);
}

.container {
  max-width: 800px;
  margin: 0 auto;
}

.back-btn {
  display: flex;
  align-items: center;
  gap: 0.5rem;
  background: none;
  border: none;
  color: var(--text-muted);
  font-size: 0.9rem;
  cursor: pointer;
  margin-bottom: 2rem;
  padding: 0.5rem 0;
  transition: all 0.3s ease;
}

.back-btn:hover {
  color: var(--primary);
}

.post-header h1 {
  font-size: 2.5rem;
  margin-bottom: 1rem;
  color: var(--text-dark);
  line-height: 1.3;
}

.post-meta {
  font-size: 1rem;
  color: var(--text-muted);
  margin-bottom: 1.5rem;
}

.post-tags {
  display: flex;
  flex-wrap: wrap;
  gap: 0.5rem;
}

.tag {
  font-size: 0.8rem;
  padding: 0.3rem 0.8rem;
  background: var(--primary-light);
  color: var(--primary);
  border-radius: 20px;
  font-weight: 500;
}

.post-content {
  padding: 4rem 2rem;
}

.post-body {
  background: white;
  padding: 3rem;
  border-radius: 15px;
  box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
}

.post-body p {
  font-size: 1.1rem;
  line-height: 1.8;
  color: var(--text-dark);
  margin-bottom: 1.5rem;
}

@media (max-width: 768px) {
  .post-header {
    padding: 2rem 1rem;
  }

  .post-header h1 {
    font-size: 2rem;
  }

  .post-content {
    padding: 2rem 1rem;
  }

  .post-body {
    padding: 2rem;
  }
}
</style>