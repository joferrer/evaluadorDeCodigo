# Evaluador de código Arduino con Modelos de lenguaje

Este proyecto corresponde al frontend de una herramienta externa a Moodle, diseñada para evaluar el código Arduino de los estudiantes del curso de Tecnologías IoT desarrollado para Virtual Pregrado UFPS.

La aplicación se comunica con un servidor backend encargado de procesar las solicitudes y realizar la evaluación automática del código mediante modelos de lenguaje.

# Índice
- [Evaluador de código Arduino con Modelos de lenguaje](#Evaluador-de-código-Arduino-con-Modelos-de-lenguaje)
  - [Tecnologías Principales](#-Tecnologías-Principales)
  - [Instalación y configuración](#Instalación-y-configuración)
    - [Requisitos previos](#Requisitos-previos)
    - [1. Clonar el repositorio](#1-Clonar-el-repositorio)
    - [2. Instalar dependencias](#2-Instalar-dependencias)
    - [3. Configuración de la URL del backend](#3-Configuración-de-la-URL-del-backend)
    - [4. Iniciar el proyecto](#4-Iniciar-el-proyecto)
  - [🚀 Estructura del proyecto](#🚀-Estructura-del-proyecto)
  - [🧞 Scripts](#🧞-Scripts)

## Tecnologías Principales

- ⚡ Astro 5 — Framework moderno para generar sitios rápidos y optimizados.
- 📦 pnpm — Gestor de paquetes eficiente para entornos Node.js, alternativo a npm.
- 🎨 Tailwind CSS — Framework utilitario para estilos, que permite crear interfaces modernas y consistentes con facilidad.

## Instalación y configuración

### Requisitos previos
- pnpm v9 o superior.
- Astro v5 - No seria compatible con v4. 

### 1. Clonar el repositorio
```bash
git clone https://github.com/joferrer/evaluadorDeCodigo.git
```
### 2. Instalar dependencias
```bash
pnpm i
```

### 3. Configuración de la URL del backend

En archivo config camia la API_URL por la url del servicio backend previamente configurado para la evaluación del código.

```js
//Esta url es la versión de dev, posiblemente para cuando ejecute esto ya no esté activa.
window.CONFIG = {
  API_URL: "https://pruebamoodle-production.up.railway.app/api/calificar"
};
```

### 4. Iniciar el proyecto

Para inciar en modo desarrollo ejecuta:
```bash
pnpm run dev
```
Para inciar en modo prod no hay un comando como tal, pero se puede ver una vista previa de lo que sería ejecutar el proyecto en modo producción.
```bash
pnpm preview
```


## 🚀 Estructura del proyecto

```text
📁 evaluadorDeCodigo/
├── 📂 public/
│   └── 📂 schemas/         # Schemas de conexión de los ejercicios de código. Tambien tiene la configuración del url backend.
│
└── 📂 src/
    ├── 📂 assets/          # Imágenes, íconos, fuentes, etc.
    ├── 📂 components/      # Componentes reutilizables
    ├── 📂 content/
    │   └── 📂 pruebas/     # Contenido relacionado con pruebas
    ├── 📂 layouts/         # Plantillas y estructuras base
    ├── 📂 pages/
    │   └── 📂 pruebas/     # Páginas de pruebas
    └── 📂 styles/          # Archivos de estilos (CSS, SCSS, etc.)
```

## 🧞 Scripts

| Command                   | Action                                           |
| :------------------------ | :----------------------------------------------- |
| `pnpm install`             | Instala las dependencias del proyecto                           |
| `pnpm dev`             | Inicia el servidor de desarrollo local en localhost:4321      |
| `pnpm build`           | Compila el sitio de producción en ./dist/          |
| `pnpm preview`         | Permite previsualizar la compilación antes de desplegar   |


