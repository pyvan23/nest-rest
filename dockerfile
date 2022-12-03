FROM node:18-alpine as deps
WORKDIR /app

COPY package.json package-lock.json ./
RUN npm install --Frozen-lockfile

FROM node:18-alpine as builder
WORKDIR /app

COPY --from=deps /app/node_modules ./node_modules

COPY  . .

RUN npm run build