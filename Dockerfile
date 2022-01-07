FROM node:14

ARG PM2_PUBLIC_KEY=${PM2_PUBLIC_KEY}
ARG PM2_SECRET_KEY=${PM2_SECRET_KEY}

WORKDIR /usr/src/app

COPY . .

RUN npm install pm2 -g

ENV PM2_PUBLIC_KEY $PM2_PUBLIC_KEY
ENV PM2_SECRET_KEY $PM2_SECRET_KEY

RUN npm install
RUN npm run build

CMD ["pm2-runtime", "ecosystem.config.js"]
