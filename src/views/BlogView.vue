<template>
  <div class="blog">
    <section class="blog-header">
      <div class="container">
        <h1>博客文章</h1>
        <p>分享我的技术心得和生活感悟</p>
      </div>
    </section>

    <section class="blog-content">
      <div class="container">
        <div class="post-grid">
          <div 
            v-for="post in posts" 
            :key="post.id" 
            class="post-card"
            @click="navigateToPost(post.id)"
          >
            <div class="post-card-content">
              <h3>{{ post.title }}</h3>
              <p class="post-meta">
                {{ post.date }} · {{ post.author }}
              </p>
              <p class="post-excerpt">{{ post.content.substring(0, 150) }}...</p>
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
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script setup>
import { computed } from 'vue'
import { useRouter } from 'vue-router'
import { useBlogStore } from '../stores/blog'

const router = useRouter()
const blogStore = useBlogStore()

const posts = computed(() => {
  return blogStore.posts
})

const navigateToPost = (id) => {
  router.push(`/post/${id}`)
}
</script>

<style scoped>
.blog {
  min-height: 100vh;
  background: var(--bg-light);
}

.blog-header {
  background: linear-gradient(135deg, var(--primary) 0%, var(--primary-light) 100%);
  color: white;
  padding: 5rem 2rem;
  text-align: center;
}

.blog-header h1 {
  font-size: 3rem;
  margin-bottom: 1rem;
  font-weight: 700;
}

.blog-header p {
  font-size: 1.2rem;
  opacity: 0.9;
}

.blog-content {
  padding: 5rem 2rem;
}

.container {
  max-width: 1200px;
  margin: 0 auto;
}

.post-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
  gap: 2rem;
}

.post-card {
  background: white;
  border-radius: 15px;
  overflow: hidden;
  box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
  transition: all 0.3s ease;
  cursor: pointer;
}

.post-card:hover {
  transform: translateY(-5px);
  box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
}

.post-card-content {
  padding: 2rem;
}

.post-card h3 {
  font-size: 1.4rem;
  margin-bottom: 1rem;
  color: var(--text-dark);
  line-height: 1.4;
}

.post-meta {
  font-size: 0.9rem;
  color: var(--text-muted);
  margin-bottom: 1rem;
}

.post-excerpt {
  color: var(--text-muted);
  line-height: 1.6;
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

@media (max-width: 768px) {
  .blog-header h1 {
    font-size: 2.5rem;
  }

  .blog-content {
    padding: 3rem 1rem;
  }

  .post-grid {
    grid-template-columns: 1fr;
  }
}
</style>