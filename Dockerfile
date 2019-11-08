FROM ubuntu:16.04

#Update ubuntu
RUN apt-get update

#Install apache2
RUN apt-get install -y apache2

#Install mysql server
RUN echo"mysql-server mysql-server/root_password password root" | debconf-set-selections \
    && echo "mysql-server mysql-server/root_password_again password root" | debconf-set-selections \
    && apt-get install -y mysql-server
