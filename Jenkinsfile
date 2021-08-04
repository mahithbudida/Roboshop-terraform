pipeline {
  agent any

  environment {
            AWS_ACCESS_KEY_ID     = credentials('jenkins-aws-secret-key-id')
            AWS_SECRET_ACCESS_KEY = credentials('jenkins-aws-secret-access-key')
          }
  stages {

    stage('Terraform INIT') {
      steps {
        sh '''
        cd roboshop-shell-scripting
        terraform init
        '''
      }
    }

    stage('Terraform ++ Destroy') {
      steps {
        sh '''
          cd roboshop-shell-scripting
          terraform destroy -auto-approve
        '''
      }
    }

  }
}
