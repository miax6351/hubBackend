		   # syntax=docker/dockerfile:1
FROM node:12-alpine

WORKDIR .

COPY package*.json ./

COPY . .

RUN npm install

CMD ["npm", "start"] 
