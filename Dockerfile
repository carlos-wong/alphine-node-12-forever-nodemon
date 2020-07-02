FROM node:12.18.2-alpine3.12
MAINTAINER carlos<huaixian.huang@gmail.com>

RUN apk add libgcc libstdc++
RUN apk add -t build-deps build-base python2

RUN ["npm","install","-g","nodemon","forever"]

VOLUME /usr/src/app
WORKDIR /usr/src/app
CMD ["npm","start"]
