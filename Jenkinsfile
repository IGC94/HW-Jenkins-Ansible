pipeline {
  environment {
    image_name = "itamarc/python-app"
  }

  agent any

  stages {
    stage("Building/Dockerizing Image") {
      steps{
          sh "docker build . -t ${env.image_name}:$BUILD_NUMBER"
      }
    }
    
    stage("Docker Deploy with Ansible") {
        steps {
            ansiblePlaybook extras: '-e DOCKER_TAG="${BUILD_NUMBER}"', installation: 'ansible', playbook: 'deploy-docker.yml'
        }
    }
    
  }
}
