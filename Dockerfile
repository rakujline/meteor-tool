from node:8.10.0

ADD bundle.tar.gz /

RUN cd / \
  tar -zxf bundle.tar.gz \
  && cd bundle/programs/server \
  && npm i

ENV MONGO_URL="mongodb/meteor"
ENV ROOT_URL="http://example.com"
ENV PORT="3000"

RUN cd /bundle \
  && node main.js; exit 0
  
EXPOSE 3000
