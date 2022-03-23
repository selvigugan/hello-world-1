FROM tomcat:latest
RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
COPY /opt/tomcat/bin/catalina.sh/*.war /usr/local/tomcat/webapps

