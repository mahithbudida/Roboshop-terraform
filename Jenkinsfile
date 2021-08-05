pipeline {
  agent any

  stages {
      environment{
      ACCESS_KEY = credentials('terraform')
      }

    stage('Terraform INIT') {

      steps {
        sh '''
        cd roboshop-shell-scripting
        terraform init -backend-config={Terraform}
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
