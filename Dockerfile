FROM nodered/node-red:latest
EXPOSE 4444
USER root

ADD package.json /theia/

ENV SHELL=/bin/bash \
  THEIA_DEFAULT_PLUGINS=local-dir:/theia/plugins
  
ENV USE_LOCAL_GIT true

RUN cd /theia/ && \
  yarn && \
  yarn theia build && \
  yarn theia download:plugins && \
  chown -R node-red:node-red /theia
