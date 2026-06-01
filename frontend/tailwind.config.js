/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./index.html",
    "./src/**/*.{js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {
      colors: {
        fut: {
          gold: '#FFD700',
          dark: '#0A0A0A',
          card: '#1A1A1A',
          accent: '#E0E0E0'
        }
      }
    },
  },
  plugins: [],
}
