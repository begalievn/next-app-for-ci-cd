FROM node:latest

WORKDIR /home/app
COPY . /home/app

RUN npm install --legacy-peer-deps
RUN npm run build

CMD ["npm", "run", "start"]
