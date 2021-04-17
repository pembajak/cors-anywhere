FROM node:current-alpine as build

WORKDIR /app

RUN apk update && apk add yarn python g++ make && rm -rf /var/cache/apk/*

RUN pwd
RUN ls -lia

COPY package*.json ./
ADD lib ./lib
COPY server*.js ./


RUN npm install

CMD [ "node", "server.js" ]
