FROM node:17

WORKDIR /usr/src/app

# makes sure both package json files are copied
COPY package*.json ./

RUN npm install

# Bundle app source code inside the image
COPY . .

EXPOSE 8080

CMD [ "node", "server.js" ] 