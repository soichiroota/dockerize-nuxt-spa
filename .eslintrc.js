module.exports = {
  root: true,
  env: {
    browser: true,
    node: true
  },
  extends: [
    '@nuxtjs/eslint-config-typescript',
    'plugin:@typescript-eslint/recommended',
    'plugin:nuxt/recommended',
    'prettier'
  ],
  plugins: [
    '@typescript-eslint',
    'vue',
    'prettier'
  ],
  // add your custom rules here
  rules: {},
  parserOptions: {
    parser: '@typescript-eslint/parser',
    ecmaVersion: 2018,
    ecmaFeatures: {
      legacyDecorators: true
    },
    sourceType: 'module',
    project: "./tsconfig.json",
    extraFileExtensions: ['.vue']
  }
}