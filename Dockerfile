FROM tomcat:latest
WORKDIR /usr/local/tomcat
COPY ./*.war /usr/local/tomcat/webapps/
RUN yum update && yum install -y dos2unix
EXPOSE 8080
COPY tomcat-users.xml /usr/local/tomcat/conf/
