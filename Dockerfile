from node:8.10.0

ADD bundle.tar.gz /

ENV SAVE_DIR="/save"

RUN cd / && mkdir -p $SAVE_DIR/image
VOLUME $SAVE_DIR

RUN cd / \
  tar -zxf bundle.tar.gz \
  && cd bundle/programs/server \
  && npm i

ENV MONGO_URL="mongodb://mongo_instance:27017/meteor"
ENV ROOT_URL="https://127.0.0.1"
ENV PORT="3000"

EXPOSE 3000

ENTRYPOINT ["node", "/bundle/main.js"]
