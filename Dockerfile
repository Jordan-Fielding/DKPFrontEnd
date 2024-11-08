# Build stage
FROM node:lts-alpine as build

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run dev

EXPOSE 5173

CMD ["npm", "run", "start"]
