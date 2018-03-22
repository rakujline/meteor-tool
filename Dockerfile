from node:8.10.0

ADD bundle.tar.gz /

RUN cd / \
  tar -zxf bundle.tar.gz \
  && cd bundle/programs/server \
  && npm i

ARG ARG_MONGO_URL

RUN cd /bundle \
  && export MONGO_URL=ARG_MONGO_URL
  && node main.js
  
