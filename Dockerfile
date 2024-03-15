FROM tomcat:latest
RUN cp -R  /home/ubuntu/workspace/demo/target/*  /usr/local/tomcat/webapps
COPY  /webapp/target/*.war /usr/local/tomcat/webapps



