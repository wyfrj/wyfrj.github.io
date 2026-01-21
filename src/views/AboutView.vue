<template>
  <div class="about">
    <section class="about-header">
      <div class="container">
        <h1>关于我</h1>
        <p>了解更多关于我的信息</p>
      </div>
    </section>

    <section class="about-content">
      <div class="container">
        <div class="about-card">
          <div class="about-avatar">
            <img 
              src="https://trae-api-cn.mchost.guru/api/ide/v1/text_to_image?prompt=professional%20portrait%20photo%20of%20a%20software%20developer%2C%20clean%20background%2C%20friendly%20smile%2C%20high%20quality&image_size=square" 
              alt="个人头像" 
              class="avatar-img"
            >
          </div>
          <h2>博主</h2>
          <p class="about-title">全栈开发工程师</p>
          <p class="about-description">
            热爱技术，专注于前端和后端开发，喜欢分享学习心得和实践经验。
            致力于通过技术创造有价值的产品，不断提升自己的技术能力。
          </p>
          <div class="about-skills">
            <h3>技术栈</h3>
            <div class="skills-list">
              <span class="skill-tag">Vue 3</span>
              <span class="skill-tag">React</span>
              <span class="skill-tag">Node.js</span>
              <span class="skill-tag">Python</span>
              <span class="skill-tag">TypeScript</span>
              <span class="skill-tag">Tailwind CSS</span>
            </div>
          </div>
          <div class="about-social">
            <h3>联系方式</h3>
            <div class="social-links">
              <a href="#" class="social-link" target="_blank">
                <Github /> GitHub
              </a>
              <a href="#" class="social-link" target="_blank">
                <Linkedin /> LinkedIn
              </a>
              <a href="#" class="social-link" target="_blank">
                <Mail /> Email
              </a>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script setup>
import { Github, Linkedin, Mail } from 'lucide-vue-next'
</script>

<style scoped>
.about {
  min-height: 100vh;
  background: var(--bg-light);
}

.about-header {
  background: linear-gradient(135deg, var(--primary) 0%, var(--primary-light) 100%);
  color: white;
  padding: 3rem 2rem;
  text-align: center;
}

.container {
  max-width: 600px;
  margin: 0 auto;
}

.about-header h1 {
  font-size: 2.5rem;
  margin-bottom: 1rem;
  font-weight: 700;
}

.about-header p {
  font-size: 1.2rem;
  opacity: 0.9;
}

.about-content {
  padding: 5rem 2rem;
}

.about-card {
  background: white;
  border-radius: 20px;
  padding: 3rem;
  box-shadow: 0 10px 30px rgba(0, 0, 0, 0.05);
  text-align: center;
}

.about-avatar {
  width: 150px;
  height: 150px;
  border-radius: 50%;
  overflow: hidden;
  margin: 0 auto 2rem;
  border: 4px solid var(--primary-light);
}

.avatar-img {
  width: 100%;
  height: 100%;
  object-fit: cover;
}

.about-card h2 {
  font-size: 2rem;
  margin-bottom: 0.5rem;
  color: var(--text-dark);
}

.about-title {
  font-size: 1.1rem;
  color: var(--primary);
  margin-bottom: 1.5rem;
  font-weight: 600;
}

.about-description {
  color: var(--text-muted);
  line-height: 1.6;
  margin-bottom: 2rem;
}

.about-skills {
  margin-bottom: 2rem;
  text-align: left;
}

.about-skills h3 {
  font-size: 1.2rem;
  margin-bottom: 1rem;
  color: var(--text-dark);
}

.skills-list {
  display: flex;
  flex-wrap: wrap;
  gap: 0.5rem;
}

.skill-tag {
  font-size: 0.8rem;
  padding: 0.4rem 1rem;
  background: var(--primary-light);
  color: var(--primary);
  border-radius: 20px;
  font-weight: 500;
}

.about-social {
  text-align: left;
}

.about-social h3 {
  font-size: 1.2rem;
  margin-bottom: 1rem;
  color: var(--text-dark);
}

.social-links {
  display: flex;
  flex-direction: column;
  gap: 1rem;
}

.social-link {
  display: flex;
  align-items: center;
  gap: 0.8rem;
  padding: 1rem;
  background: var(--bg-light);
  border-radius: 10px;
  color: var(--text-dark);
  text-decoration: none;
  transition: all 0.3s ease;
}

.social-link:hover {
  background: var(--primary-light);
  color: var(--primary);
  transform: translateX(5px);
}

@media (max-width: 768px) {
  .about-header h1 {
    font-size: 2rem;
  }

  .about-content {
    padding: 3rem 1rem;
  }

  .about-card {
    padding: 2rem;
  }
}
</style>