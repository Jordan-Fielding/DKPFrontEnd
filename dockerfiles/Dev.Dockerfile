FROM node:14-alpine

WORKDIR /vue_app

EXPOSE 5173

CMD [ "npm", "run", "serve" ]