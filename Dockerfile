FROM node:12-alpine

RUN mkdir /script

COPY build.sh /script/

RUN chmod +x /script/build.sh

RUN npm install -g gatsby-cli

RUN mkdir /src
RUN mkdir /public

WORKDIR /src

CMD [ "/script/build.sh" ]
