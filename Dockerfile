from node:8.10.0

ADD bundle.tar.gz /

RUN cd / \
  tar -zxf bundle.tar.gz \
  && cd bundle/programs/server \
  && npm i

ARG MONGO_URL
ARG ROOT_URL

RUN cd /bundle \
  && node main.js; exit 0
  
EXPOSE 3000
