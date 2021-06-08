FROM node:14-alpine

RUN mkdir /github-action-test
WORKDIR /github-action-test

COPY dist ./dist
COPY ["package.json", "./"]
RUN npm install

EXPOSE 80

CMD ["npm", "start"]
