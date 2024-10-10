FROM node:lts-alpine

ADD . /tmp/bambu
WORKDIR /tmp/bambu
RUN npm i

VOLUME /root/.config/bambu-cli

ENTRYPOINT [ "/tmp/bambu/bin/cli.js" ]