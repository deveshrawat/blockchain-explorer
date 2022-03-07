FROM node:14-alpine
WORKDIR '/usr/src/app'
RUN apk add yarn
COPY ./package.json ./
RUN yarn 
COPY . .
RUN yarn build
CMD ["yarn" , "start"]