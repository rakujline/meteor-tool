from node:8.11-alpine

ADD toolbox.tar.gz /

RUN cd / \
  tar -zxf toolbox.tar.gz \
  && cd bundle/programs/server \
  && npm i

ENV MONGO_URL="mongodb://mongo_instance:27017/meteor"
ENV ROOT_URL="https://127.0.0.1"
ENV PORT="3000"

EXPOSE 3000

ENTRYPOINT ["node", "/bundle/main.js"]
