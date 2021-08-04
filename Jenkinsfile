pipeline {
  agent any

  environment {
            AWS_ACCESS_KEY  = credentials('TERRAFORM')

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
