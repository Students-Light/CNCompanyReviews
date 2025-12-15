import DefaultTheme from 'vitepress/theme'
import WalineComment from './components/WalineComment.vue'
import './custom.css'

export default {
  extends: DefaultTheme,
  enhanceApp({ app }) {
    app.component('WalineComment', WalineComment)
  }
}
