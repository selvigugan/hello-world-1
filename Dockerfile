FROM tomcat:7.0.82-jre8
RUN yum update && yum -y upgrade
WORKDIR /usr/local/tomcat
COPY /app.war /usr/local/tomcat/webapps/app.war
RUN yum update && yum install -y dos2unix
EXPOSE 8080
COPY tomcat-users.xml /usr/local/tomcat/conf/
