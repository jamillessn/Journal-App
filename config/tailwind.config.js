const defaultTheme = require('tailwindcss/defaultTheme');
const colors = require('tailwindcss/colors');

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  variants: {
    extend: {
      backgroundColor: ['responsive', 'hover', 'focus', 'dark', 'dark:hover'],
      textColor: ['responsive', 'hover', 'focus', 'dark', 'dark:hover'],
    },
  },
  theme: {
    colors: {
      cyan: '#9cdbff',
      white: '#ffffff',
      purple: '#3f3cbb',
      midnight: '#121063',
      metal: '#565584',
      tahiti: '#3ab7bf',
      silver: '#ecebff',
      'bubble-gum': '#ff77e9',
      red: {
        50: '#FEF3F3',
        100: '#FEE2E2',
        200: '#FFCBCA',
        300: '#FCA5A5',
        400: '#F97170',
        500: '#EE4445',
        600: '#DC2727',
        700: '#B91C1C',
        800: '#991A1A',
        900: '#7E1C1D',
      },
      teal: {
        50: '#F0FDFA',
        100: '#CDFBF0',
        200: '#98F7E4',
        300: '#5FEBD4',
        400: '#2CD5BF',
        500: '#15B9A6',
        600: '#0D9488',
        700: '#0F766E',
        800: '#105F59',
        900: '#124F4A',
      },
      bermuda: '#78dcca',
      primary: colors.blue,
      brown: {
        50: '#fdf8f6',
        100: '#f2e8e5',
        200: '#eaddd7',
        300: '#e0cec7',
        400: '#d2bab0',
        500: '#bfa094',
        600: '#a18072',
        700: '#977669',
        800: '#846358',
        900: '#43302b',
      },
      transparent: 'transparent',
      current: 'currentColor',
      black: colors.black,
      gray: colors.gray,
      emerald: colors.emerald,
      indigo: colors.indigo,
      yellow: colors.yellow,
    },
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ],
  darkMode: 'class', // Enable dark mode
};
