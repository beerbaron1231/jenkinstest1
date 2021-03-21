FROM node:14-slim
WORKDIR /app
ADD . /app
RUN npm install
EXPOSE 3000
CMD npm start