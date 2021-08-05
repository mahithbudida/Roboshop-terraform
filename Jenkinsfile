pipeline {
  agent any

  environment{
  ACCESS_KEY = credentials('terraform')
  }

  stages {

    stage('Terraform INIT') {
      steps {
        sh '''
        cd roboshop-shell-scripting
        terraform init -backend-config=${ACCESS_KEY}
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
