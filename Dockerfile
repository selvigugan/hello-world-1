FROM tomcat:latest
WORKDIR /usr/local/tomcat
RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
COPY /app.war /usr/local/tomcat/webapps/app.war
RUN apt-get update && apt-get install -y dos2unix
EXPOSE 8080
COPY tomcat-users.xml /usr/local/tomcat/conf/
