FROM node:16    
WORKDIR /app
# copy all filtes
COPY . .    
# install all deps
RUN npm install

RUN npm run

# vite default port
EXPOSE 5173    
CMD [ "npm", "run", "dev", "--", "--host", "0.0.0.0", "start" ]