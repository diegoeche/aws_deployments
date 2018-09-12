FROM node:8-alpine

WORKDIR /usr/src/app

COPY src/package*.json ./

RUN npm install

COPY ./src .

ENV PORT 80

EXPOSE 80

CMD [ "npm", "start" ]
