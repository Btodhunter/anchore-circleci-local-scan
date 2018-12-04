FROM node:8-alpine
RUN apk update && apk upgrade
RUN mkdir /app
WORKDIR /app
COPY . .
RUN npm install

USER node:node

EXPOSE 8000

ENTRYPOINT ["node", "/app/index.js"]
