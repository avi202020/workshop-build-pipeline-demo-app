FROM node:9.11.1

COPY src/ /opt/app/src/
COPY package*.json /opt/app/

RUN \
    cd /opt/app && \
    npm install

ENTRYPOINT ["node", "/opt/app/src/app.js"]
