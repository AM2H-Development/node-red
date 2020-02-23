FROM nodered/node-red:latest
RUN mkdir /data/theia
WORKDIR /data/theia

COPY package.json .

RUN yarn &&
  yarn theia build &&
  yarn theia download:plugins

WORKDIR /usr/src/node-red
