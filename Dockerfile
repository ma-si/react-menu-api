ARG NODE_VER=12.10
ARG NODE_PORT=3000

FROM node:${NODE_VER}
ARG NODE_PORT

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
ENV PATH /usr/src/app/node_modules/.bin:$PATH
COPY package.json /usr/src/app/
RUN npm install

COPY . /usr/src/app
RUN npm run build:all

ENV NODE_ENV docker

EXPOSE ${NODE_PORT}

CMD [ "npm", "run", "start" ]
