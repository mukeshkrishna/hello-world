# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "mukesh@gmail.com" 
COPY ./webapp/target/webapp.war /opt/tomcat/webapps/
