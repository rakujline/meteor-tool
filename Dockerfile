from node:8.10.0

ADD bundle.tar.gz /

RUN cd / \
  tar -zxf bundle.tar.gz \
  && cd bundle/programs/server \
  && npm i

ENV MONGO_URL="mongodb/meteor"
ENV ROOT_URL="http://127.0.0.1"
ENV PORT="3000"

RUN cd /bundle \

EXPOSE 3000

CMD ["node", "main.js"]
