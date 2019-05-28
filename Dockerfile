# Base image
FROM node:alpine

WORKDIR  /usr/app

#Dependecies
COPY ./package.json ./

RUN npm install

COPY ./ ./

#Default commands
CMD ["npm", "start"]