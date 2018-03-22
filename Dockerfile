from node:8.10.0

ADD bundle.tar.gz /

RUN cd / \
  tar -zxf bundle.tar.gz \
  && cd bundle/programs/server \
  && npm i \
  
RUN cd /bundle \
  && export MONG_URL='mongodb/meteor' \
  && node main.js
  
