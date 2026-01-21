<template>
  <div class="app">
    <header class="navbar">
      <div class="navbar-container">
        <router-link to="/" class="navbar-brand">
          <span class="brand-name">个人博客</span>
        </router-link>
        <nav class="navbar-nav">
          <router-link to="/" class="nav-link">首页</router-link>
          <router-link to="/blog" class="nav-link">博客</router-link>
          <router-link to="/about" class="nav-link">关于我</router-link>
        </nav>
      </div>
    </header>

    <main class="main-content">
      <router-view v-slot="{ Component }">
        <transition name="fade" mode="out-in">
          <component :is="Component" />
        </transition>
      </router-view>
    </main>

    <footer class="footer">
      <div class="footer-container">
        <p>&copy; {{ new Date().getFullYear() }} 个人博客. 保留所有权利.</p>
        <div class="footer-links">
          <router-link to="/" class="footer-link">首页</router-link>
          <router-link to="/blog" class="footer-link">博客</router-link>
          <router-link to="/about" class="footer-link">关于我</router-link>
        </div>
      </div>
    </footer>
  </div>
</template>

<script setup>
// App component
</script>

<style scoped>
.app {
  display: flex;
  flex-direction: column;
  min-height: 100vh;
}

.navbar {
  background: white;
  box-shadow: 0 2px 10px rgba(0, 0, 0, 0.05);
  position: sticky;
  top: 0;
  z-index: 100;
}

.navbar-container {
  max-width: 1200px;
  margin: 0 auto;
  padding: 1rem 2rem;
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.navbar-brand {
  text-decoration: none;
}

.brand-name {
  font-size: 1.5rem;
  font-weight: 700;
  color: var(--primary);
}

.navbar-nav {
  display: flex;
  gap: 2rem;
}

.nav-link {
  text-decoration: none;
  color: var(--text-dark);
  font-weight: 500;
  transition: all 0.3s ease;
  position: relative;
}

.nav-link:hover {
  color: var(--primary);
}

.nav-link.router-link-active {
  color: var(--primary);
}

.nav-link.router-link-active::after {
  content: '';
  position: absolute;
  bottom: -5px;
  left: 0;
  width: 100%;
  height: 2px;
  background: var(--primary);
  border-radius: 2px;
}

.main-content {
  flex: 1;
}

.footer {
  background: var(--text-dark);
  color: white;
  padding: 3rem 2rem 1rem;
  margin-top: auto;
}

.footer-container {
  max-width: 1200px;
  margin: 0 auto;
  text-align: center;
}

.footer-links {
  display: flex;
  justify-content: center;
  gap: 2rem;
  margin-top: 1rem;
  margin-bottom: 2rem;
}

.footer-link {
  color: rgba(255, 255, 255, 0.8);
  text-decoration: none;
  transition: all 0.3s ease;
}

.footer-link:hover {
  color: white;
}

.fade-enter-active,
.fade-leave-active {
  transition: opacity 0.3s ease;
}

.fade-enter-from,
.fade-leave-to {
  opacity: 0;
}

@media (max-width: 768px) {
  .navbar-container {
    padding: 1rem;
  }

  .navbar-nav {
    gap: 1rem;
  }

  .footer {
    padding: 2rem 1rem 1rem;
  }

  .footer-links {
    gap: 1rem;
  }
}
</style>