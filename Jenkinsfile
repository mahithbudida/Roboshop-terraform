pipeline {
  agent any

  environment {
            AWS_ACCESS_KEY_ID     = credentials('AKIAQNSEODAUDWDQFOPO')
            AWS_SECRET_ACCESS_KEY = credentials('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')
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
