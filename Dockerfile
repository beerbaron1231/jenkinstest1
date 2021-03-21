FROM node:14

WORKDIR /home/node/app

COPY * ./

RUN npm install

EXPOSE 3000

CMD [ "npm", "start" ]