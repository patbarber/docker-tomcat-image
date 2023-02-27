FROM ubuntu:latest
RUN apt-get update
RUN apt-get -y install default-jre-headless
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
ADD https://downloads.apache.org/tomcat/tomcat-10/v10.1.6/bin/apache-tomcat-10.1.6.tar.gz .
RUN tar -xvzf apache-tomcat-10.1.6.tar.gz  
RUN mv apache-tomcat-10.1.6/* /opt/tomcat 
COPY tomcat-users.xml /opt/tomcat/conf
COPY context.xml \opt\tomcat\webapps\manager\META-INF
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
