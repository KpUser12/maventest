pipeline {
    agent { label 'jenkins-agent' }
    tools {
        jdk 'java17'
        maven 'Maven3'
    }
 environment {
        APP_NAME = "docker-app-pipeline"
        RELEASE = "1.0.0"
        DOCKER_USER = "kapsto"
        DOCKER_PASS = env.DOCKER_PASSWORD // Use environment variable for Docker password
        IMAGE_NAME = "${DOCKER_USER}/${APP_NAME}"
        IMAGE_TAG = "${RELEASE}-${BUILD_NUMBER}"
    }
    
    stages{
        stage("Cleanup Workspace"){
                steps {
                cleanWs()
                }
        }
          stage("Checkout from SCM"){
                steps {
                    git branch: 'main', credentialsId: 'github', url: 'https://github.com/KpUser12/maventest'
                }
        }
         stage("Build Application"){
            steps {
                sh "mvn clean package"
            }

       }
        stage("Test Application"){
           steps {
                 sh "mvn test"
           }
       }
         stage("Build & Push Docker Image") {
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', DOCKER_USER, DOCKER_PASS) {
                        def docker_image = docker.build("${IMAGE_NAME}:${IMAGE_TAG}")
                        docker_image.push()
                        docker_image.push('latest')
                    }
                }
            }
        }
    }
}
