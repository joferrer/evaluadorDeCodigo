# Etapa 1: Build
FROM node:20-alpine AS builder

# Instalar pnpm
RUN npm install -g pnpm

# Crear carpeta de trabajo
WORKDIR /app

# Copiar solo archivos de dependencias primero (para aprovechar cache de Docker)
COPY package.json pnpm-lock.yaml ./

# Instalar dependencias (sin dev si quieres optimizar)
RUN pnpm install

# Copiar el resto del código del proyecto
COPY . .

# Pasar la variable al build
ARG PUBLIC_API_URL
ENV PUBLIC_API_URL=$PUBLIC_API_URL

# Construir el proyecto (esto genera /dist)
RUN pnpm build


# Etapa 2: Servir archivos estáticos
FROM node:20-alpine AS runner

# Instalar un servidor web liviano
RUN npm install -g serve

WORKDIR /app

# Copiar solo la carpeta construida
COPY --from=builder /app/dist ./dist

EXPOSE 8080

# Servir el sitio
CMD ["serve", "dist", "-l", "8080"]
