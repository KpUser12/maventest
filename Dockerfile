FROM openjdk:8
EXPOSE 8080
ADD target/devops-integration.jar devops-integration.jar
ENTRYPOINT ["java","-jar","/devops-integration.jar"]
RUN cp -R  /home/ubuntu/workspace/devops-integration/target /home/ubuntu/workspace/devops-integration
COPY /devops-integration/target/*.jar /home/ubuntu/workspace/devops-integration

