FROM tomcat:latest
RUN cp -R  /home/ubuntu/workspace/demo/target/my-app.jar  /usr/local/tomcat/webapps
COPY  /webapp/target/*.jar /usr/local/tomcat/webapps



