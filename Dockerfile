FROM zzrot/alpine-node:latest

ENV NODE_ENV production

RUN npm install -g pm2


EXPOSE 80