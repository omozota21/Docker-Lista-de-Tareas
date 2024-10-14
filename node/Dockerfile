# Usar una imagen base de Node.js
FROM node:14

# Establecer el directorio de trabajo
WORKDIR /usr/src/app

# Copiar el package.json y package-lock.json
COPY package*.json ./

# Instalar las dependencias
RUN npm install

# Copiar package.json y package-lock.json
COPY package*.json ./

# Copiar el controlador específico
COPY ./controllers/BlogController.js ./controllers/BlogController.js

# Copiar el archivo de la base de datos
COPY ./database/db.js ./database/db.js

# Copiar el modelo
COPY ./models/BlogModel.js ./models/BlogModel.js

# Copiar las rutas
COPY ./routes/routes.js ./routes/routes.js

# Copiar app.js
COPY ./app.js ./app.js

# Exponer el puerto en el que la app estará corriendo
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["node", "index.js"]  # Cambia index.js por tu archivo principal
