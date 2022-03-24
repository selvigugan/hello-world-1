FROM tomcat:7.0.82-jre8
RUN apt-get update && apt-get -y upgrade
WORKDIR /usr/local/tomcat
RUN cp -R  /webapps/*  /usr/local/tomcat/webapps
COPY ./*.war /usr/local/tomcat/webapps

