// @ts-check
import { defineConfig } from "astro/config";
import tailwindcss from "@tailwindcss/vite";


//const { API_URL } = loadEnv(process.env.NODE_ENV || "http://localhost:3000", process.cwd(), "");
// https://astro.build/config
export default defineConfig({
  vite: {
    plugins: [tailwindcss()],
    resolve: {
      alias: {
        "@": "/src",
      },
    },
  }
 
});