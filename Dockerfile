FROM node:lts-alpine
WORKDIR /app
# copy all filtes
COPY package*.json ./app   
# install all deps
RUN npm install

# copy project files and folders to the current working directory (i.e. 'app' folder)
COPY . .

RUN npm run dev

# vite default port
EXPOSE 5173    
CMD [ "npm", "run", "dev" ]