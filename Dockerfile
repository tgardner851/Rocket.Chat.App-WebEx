FROM node:10-alpine

ENV URL=
ENV USERNAME=
ENV PASSWORD=

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY package*.json ./

USER node

RUN npm install @rocket.chat/apps-cli

RUN chown node ./node_modules/*

RUN npm install

COPY --chown=node:node . .

CMD "./node_modules/@rocket.chat/apps-cli/bin/run" deploy --url ${URL} --username ${USERNAME} --password ${PASSWORD} || "./node_modules/@rocket.chat/apps-cli/bin/run" deploy --update --url ${URL} --username ${USERNAME} --password ${PASSWORD}
