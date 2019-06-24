FROM node:10.16.0-alpine
RUN npm install -g claudia
COPY ./package.json /var/www/package.json
COPY ./package-lock.json /var/www/package-lock.json
WORKDIR /var/www
RUN npm install
ENTRYPOINT [ "npm", "start" ]
EXPOSE 3000