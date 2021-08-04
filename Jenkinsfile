pipeline {
  agent any

  environment {
            AWS_ACCESS_KEY_ID     = credentials('TERRAFORM.AWS_ACCESS_KEY_ID')
            AWS_SECRET_ACCESS_KEY = credentials('TERRAFORM.AWS_SECRET_ACCESS_KEY')
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
