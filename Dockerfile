# Base image
FROM node:alpine as builder
WORKDIR  /app

#Dependecies
COPY ./package.json .

RUN npm install
COPY ./ ./
RUN npm run build

FROM nginx
EXPOSE 80
COPY --from=builder /app/build /usr/share/nginx