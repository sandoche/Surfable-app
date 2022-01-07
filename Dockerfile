FROM node:14.16.0-alpine

ARG PM2_PUBLIC_KEY=${PM2_PUBLIC_KEY}
ARG PM2_SECRET_KEY=${PM2_SECRET_KEY}

ADD package.json /tmp/package.json
ADD package-lock.json /tmp/package-lock.json

RUN cd /tmp && npm install --silent && mkdir -p /app && cp -a /tmp/node_modules /app/
RUN npm install pm2 -g

WORKDIR /app

ADD . /app

ENV PM2_PUBLIC_KEY $PM2_PUBLIC_KEY
ENV PM2_SECRET_KEY $PM2_SECRET_KEY

RUN npm run build

CMD ["pm2-runtime", "ecosystem.config.js"]
