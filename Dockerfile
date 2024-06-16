FROM node:latest

WORKDIR /usr/src/app

RUN npm i express body-parser requests

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "node", "app.js" ]