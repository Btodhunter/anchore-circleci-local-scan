FROM node:slim

RUN mkdir -p /home/node/ && apt-get -y install curl
COPY ./app/ /home/node/app/

EXPOSE 8081

USER node
CMD node /home/node/app/server.js
