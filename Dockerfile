FROM node:latest

ENV NODE_ENV production

RUN npm install -g pm2


RUN mkdir /packages
COPY packages/. /packages
RUN cd /packages/common && npm install
RUN cd /packages/build && npm install
RUN cd /packages/server && npm install
RUN cd /packages/client && npm install
RUN cd / && rm -rf /packages

EXPOSE 80