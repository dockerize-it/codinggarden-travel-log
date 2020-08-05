FROM node
WORKDIR /usr/src/app

RUN apt-get update && apt-get install -yy mongodb mongodb-server mongo-tools && apt-get dist-upgrade -yy

COPY ./init /usr/src/app/init
COPY ./server /usr/src/app/server
COPY ./client /usr/src/app/client

EXPOSE 1337
EXPOSE 3000
EXPOSE 27017
CMD [ "bash", "/usr/src/app/init" ]
