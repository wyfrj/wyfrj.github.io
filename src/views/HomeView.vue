<template>
  <div class="home">
    <section class="hero">
      <div class="hero-content">
        <h1>欢迎来到我的个人博客</h1>
        <p>分享技术、生活和思考</p>
        <router-link to="/blog" class="btn">查看文章</router-link>
      </div>
    </section>

    <section class="features">
      <div class="feature-item">
        <div class="feature-icon">
          <Book />
        </div>
        <h3>技术分享</h3>
        <p>记录学习过程中的技术心得和实践经验</p>
      </div>
      <div class="feature-item">
        <div class="feature-icon">
          <PenTool />
        </div>
        <h3>生活随笔</h3>
        <p>分享生活中的点滴感悟和美好瞬间</p>
      </div>
      <div class="feature-item">
        <div class="feature-icon">
          <Lightbulb />
        </div>
        <h3>思考感悟</h3>
        <p>记录对技术和生活的思考与感悟</p>
      </div>
    </section>

    <section class="latest-posts">
      <h2>最新文章</h2>
      <div class="post-list">
        <div 
          v-for="post in latestPosts" 
          :key="post.id" 
          class="post-item"
          @click="navigateToPost(post.id)"
        >
          <h3>{{ post.title }}</h3>
          <p class="post-meta">
            {{ post.date }} · {{ post.author }}
          </p>
          <p class="post-excerpt">{{ post.content.substring(0, 100) }}...</p>
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
    </section>
  </div>
</template>

<script setup>
import { computed } from 'vue'
import { useRouter } from 'vue-router'
import { useBlogStore } from '../stores/blog'
import { Book, PenTool, Lightbulb } from 'lucide-vue-next'

const router = useRouter()
const blogStore = useBlogStore()

const latestPosts = computed(() => {
  return blogStore.posts.slice(0, 3)
})

const navigateToPost = (id) => {
  router.push(`/post/${id}`)
}
</script>

<style scoped>
.home {
  min-height: 100vh;
  background: var(--bg-gradient);
}

.hero {
  height: 70vh;
  display: flex;
  align-items: center;
  justify-content: center;
  text-align: center;
  background: linear-gradient(135deg, var(--primary) 0%, var(--primary-light) 100%);
  color: white;
  padding: 0 2rem;
}

.hero-content h1 {
  font-size: 3.5rem;
  margin-bottom: 1rem;
  font-weight: 700;
}

.hero-content p {
  font-size: 1.5rem;
  margin-bottom: 2rem;
  opacity: 0.9;
}

.btn {
  display: inline-block;
  padding: 1rem 2rem;
  background: white;
  color: var(--primary);
  border-radius: 50px;
  font-weight: 600;
  transition: all 0.3s ease;
  text-decoration: none;
}

.btn:hover {
  transform: translateY(-2px);
  box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
}

.features {
  padding: 5rem 2rem;
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 3rem;
  background: white;
}

.feature-item {
  text-align: center;
  padding: 2rem;
  border-radius: 20px;
  background: var(--bg-light);
  transition: all 0.3s ease;
}

.feature-item:hover {
  transform: translateY(-5px);
  box-shadow: 0 15px 30px rgba(0, 0, 0, 0.05);
}

.feature-icon {
  width: 80px;
  height: 80px;
  background: var(--primary-light);
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  margin: 0 auto 1.5rem;
  font-size: 2rem;
  color: var(--primary);
}

.feature-item h3 {
  font-size: 1.5rem;
  margin-bottom: 1rem;
  color: var(--text-dark);
}

.feature-item p {
  color: var(--text-muted);
  line-height: 1.6;
}

.latest-posts {
  padding: 5rem 2rem;
  background: var(--bg-light);
}

.latest-posts h2 {
  text-align: center;
  font-size: 2.5rem;
  margin-bottom: 3rem;
  color: var(--text-dark);
}

.post-list {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
  gap: 2rem;
  max-width: 1200px;
  margin: 0 auto;
}

.post-item {
  background: white;
  border-radius: 15px;
  padding: 2rem;
  box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
  transition: all 0.3s ease;
  cursor: pointer;
}

.post-item:hover {
  transform: translateY(-5px);
  box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
}

.post-item h3 {
  font-size: 1.3rem;
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
  .hero-content h1 {
    font-size: 2.5rem;
  }

  .hero-content p {
    font-size: 1.2rem;
  }

  .features {
    padding: 3rem 1rem;
  }

  .latest-posts {
    padding: 3rem 1rem;
  }

  .post-list {
    grid-template-columns: 1fr;
  }
}
</style>