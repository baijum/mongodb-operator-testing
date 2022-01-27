FROM debian:10
RUN apt-get update && apt-get install -y wget gnupg sudo
RUN echo "deb http://repo.mongodb.org/apt/debian buster/mongodb-org/5.0 main" > /etc/apt/sources.list.d/mongodb-org-5.0.list
RUN wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | apt-key add -
RUN apt-get update && apt-get install -y mongodb-org

