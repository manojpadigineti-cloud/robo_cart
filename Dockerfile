FROM     node:20
RUN      mkdir /app \
         useradd -d /app roboshop \
         chown roboshop:roboshop /app \
USER     roboshop
COPY     package.json run.sh server.js /app
WORKDIR  /app
RUN      npm install
ENTRYPOINT ["node", "/app/server.js"]

