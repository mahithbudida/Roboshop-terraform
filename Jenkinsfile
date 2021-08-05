pipeline {
  agent any

  stages {

    stage('Terraform INIT') {
            environment{
              ACCESS_KEY = credentials('terraform')
              }

      steps {
        sh '''
        cd roboshop-shell-scripting
        terraform init -backend-config={ACCESS_KEY}
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
