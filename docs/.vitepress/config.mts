import { defineConfig } from 'vitepress'

export default defineConfig({
  title: "企业黑名单",
  description: "匿名排查不良企业",
  themeConfig: {
    nav: [
      { text: '首页', link: '/' },
      { text: '黑名单', link: '/list' } // 假设你建了一个 list.md
    ],
    socialLinks: [
      { icon: 'github', link: 'https://github.com/Students-Light/CNCompanyReviews' }
    ]
  }
})
