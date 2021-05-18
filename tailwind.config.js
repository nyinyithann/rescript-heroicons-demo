module.exports = {
  mode: 'jit',
  purge: [
    './src/index.html',
    './src/*.{js, bs.js, jsx, bs.jsx}',
    './src/**/*.{js, bs.js, jsx, bs.jsx}',
  ],
  darkMode: false, // or 'media' or 'class'
  theme: {
    textColor: {
      primary_100: 'var(--color-primary-100)',
      primary_200: 'var(--color-primary-200)',
      primary_300: 'var(--color-primary-300)',
      primary_400: 'var(--color-primary-400)',
      primary_500: 'var(--color-primary-500)',
      primary_600: 'var(--color-primary-600)',
      primary_700: 'var(--color-primary-700)',
      primary_800: 'var(--color-primary-800)',
      primary_900: 'var(--color-primary-900)',
    },
    backgroundColor: {
      primary_100: 'var(--color-primary-100)',
      primary_200: 'var(--color-primary-200)',
      primary_300: 'var(--color-primary-300)',
      primary_400: 'var(--color-primary-400)',
      primary_500: 'var(--color-primary-500)',
      primary_600: 'var(--color-primary-600)',
      primary_700: 'var(--color-primary-700)',
      primary_800: 'var(--color-primary-800)',
      primary_900: 'var(--color-primary-900)',
    },
    ringColor: {
      primary_100: 'var(--color-primary-100)',
      primary_200: 'var(--color-primary-200)',
      primary_300: 'var(--color-primary-300)',
      primary_400: 'var(--color-primary-400)',
      primary_500: 'var(--color-primary-500)',
      primary_600: 'var(--color-primary-600)',
      primary_700: 'var(--color-primary-700)',
      primary_800: 'var(--color-primary-800)',
      primary_900: 'var(--color-primary-900)',
    },
  },
  variants: {},
  plugins: [],
};
