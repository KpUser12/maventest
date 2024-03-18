FROM tomcat:latest
RUN cp -R  /home/ubuntu/workspace/demo/target/my-app.jar  /home/ubuntu/workspace/demo
COPY  /webapp/target/*.jar /home/ubuntu/workspace/demo



