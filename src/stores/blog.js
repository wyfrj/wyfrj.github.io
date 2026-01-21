import { defineStore } from 'pinia'

export const useBlogStore = defineStore('blog', {
  state: () => ({
    posts: [
      {
        id: 1,
        title: '欢迎来到我的个人博客',
        content: '这是我的第一篇博客文章，欢迎大家访问！',
        author: '博主',
        date: '2024-01-01',
        tags: ['入门', '欢迎']
      },
      {
        id: 2,
        title: 'Vue 3 学习笔记',
        content: 'Vue 3 带来了很多新特性，包括组合式 API、Teleport 等。',
        author: '博主',
        date: '2024-01-02',
        tags: ['Vue', '前端']
      },
      {
        id: 3,
        title: 'GitHub Pages 部署指南',
        content: '如何将个人网站部署到 GitHub Pages，实现免费托管。',
        author: '博主',
        date: '2024-01-03',
        tags: ['GitHub', '部署']
      }
    ]
  }),
  getters: {
    getPostById: (state) => (id) => {
      return state.posts.find(post => post.id === parseInt(id))
    }
  },
  actions: {
    addPost(post) {
      const newId = Math.max(...this.posts.map(p => p.id), 0) + 1
      this.posts.push({ id: newId, ...post })
    }
  }
})