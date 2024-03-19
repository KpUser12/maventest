FROM tomcat:latest
RUN cp -R  /home/ubuntu/workspace/demo/target/*  /home/ubuntu/workspace/demo
COPY  /webapp/target/*.jar /home/ubuntu/workspace/demo



