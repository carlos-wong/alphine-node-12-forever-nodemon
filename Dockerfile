FROM node:5.3
RUN ["npm","install","-g","nodemon","forever"]
VOLUME /usr/src/app
WORKDIR /usr/src/app
CMD ["npm","start"]
