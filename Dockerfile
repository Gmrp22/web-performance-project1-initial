FROM node:20-alpine

# Instalamos firebase-tools globalmente pero DENTRO del contenedor
RUN npm install -g firebase-tools

# Establecemos el directorio de trabajo
WORKDIR /app

# Exponemos los puertos que usa Firebase Emulator o Hosting (opcional, si los necesitas)
EXPOSE 4000 5000 5001 8080 8085 9000 9005 9099 9199

# El comando por defecto será ejecutar firebase
ENTRYPOINT ["firebase"]
