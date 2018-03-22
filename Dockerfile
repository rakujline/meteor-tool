from node:8.10.0

RUN tar -zxf bundle.tar.gz \
  && cd bundle/programs/server \
  && npm i
  
