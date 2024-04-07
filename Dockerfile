# Production deployment dockerfile
FROM node:alpine

WORKDIR /usr/src/app

# Install app dependencies
COPY package.json package-lock.json ./

# Install Node Packages (only production)
RUN npm install --production

# Copying app source
COPY index.js index.js

CMD ["npm", "start"]