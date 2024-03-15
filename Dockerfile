FROM tomcat:latest
RUN cp -R  /home/ubuntu/workspace/demo/target/*  /home/ubuntu/workspace/demo
COPY /demo/target/*.war /home/ubuntu/workspace/demo


