FROM node:alpine

# Create app directory
WORKDIR /usr/src/hangman

COPY package*.json ./

RUN npm install dev-server -g

# Bundle app source
COPY . .

RUN ls -altr

EXPOSE 8080
CMD [ "npm", "start" ]
