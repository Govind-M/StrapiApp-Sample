FROM node:20.18.1-alpine

WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the full project
COPY . .

EXPOSE 1337

CMD [ "npm", "run", "develop" ]
