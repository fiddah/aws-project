# Stage 1: Build the application
FROM node:14

WORKDIR /app

COPY package.json .
COPY bundle.js ./dist
COPY hello.html .

RUN npm install



EXPOSE 80


CMD ["node", "bundle.js ./dist"]