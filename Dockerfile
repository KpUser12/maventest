FROM tomcat:latest
RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/etc/test

COPY /webapp/target/*.war /usr/local/etc/test

