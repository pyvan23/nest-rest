FROM node:18-alpine as deps
WORKDIR /app

COPY package.json package-lock.json ./
RUN npm run start


