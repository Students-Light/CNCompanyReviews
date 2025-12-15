<template>
  <div class="waline-wrapper">
    <div id="waline-comment"></div>
  </div>
</template>

<script setup lang="ts">
import { onMounted, onBeforeUnmount } from 'vue'

onMounted(() => {
  // 动态加载 Waline CSS
  const link = document.createElement('link')
  link.rel = 'stylesheet'
  link.href = 'https://unpkg.com/@waline/client@v2/dist/waline.css'
  document.head.appendChild(link)

  // 动态加载并初始化 Waline
  import('https://unpkg.com/@waline/client@v2/dist/waline.mjs').then(({ init }) => {
    init({
      el: '#waline-comment',
      serverURL: 'https://company-waline.vercel.app', // Waline 服务器地址
      placeholder: '💬 匿名爆料...（请注意去除图片中的隐私水印）',
      dark: 'auto',
      locale: {
        placeholder: '匿名爆料...',
        sofa: '快来成为第一个爆料的人吧~',
        submit: '提交',
        admin: '管理员',
        sticky: '置顶',
        word: '字',
        wordHint: '评论字数应在 $0 到 $1 字之间！\n当前字数：$2',
        anonymous: '匿名',
        login: '登录（可选）',
        logout: '退出',
        profile: '个人资料',
        approved: '通过',
        waiting: '待审核',
        spam: '垃圾',
        unsticky: '取消置顶',
        delete: '删除',
        edit: '编辑',
        reply: '回复',
        cancelReply: '取消回复',
        comment: '评论',
        refresh: '刷新',
        more: '加载更多...',
        preview: '预览',
        emoji: '表情',
        uploadImage: '上传图片',
        seconds: '秒前',
        minutes: '分钟前',
        hours: '小时前',
        days: '天前',
        now: '刚刚',
        uploading: '上传中',
        login_title: '登录查看更多功能',
        password: '密码',
        password_again: '再次输入密码',
        register: '注册',
        back: '返回',
        guest: '游客'
      },
      meta: ['nick'],
      requiredMeta: [],
      pageSize: 10,
      copyright: false,
      reaction: true
    })
  })
})
</script>

<style scoped>
.waline-wrapper {
  margin: 2rem auto;
  max-width: 1200px;
  padding: 0 1.5rem;
}

@media (max-width: 768px) {
  .waline-wrapper {
    padding: 0 1rem;
  }
}
</style>
