pipeline {
  agent any

  stages {

    stage('Terraform INIT') {
      steps {
      git branch: 'main', url: 'https://github.com/mahithbudida/Roboshop-terraform.git'
        sh '''
        cd roboshop-shell-scripting
        terraform init
        '''
      }
    }

    stage('Terraform Destroy') {
      steps {
        sh '''
          cd roboshop-shell-scripting
          terraform destroy -auto-approve
        '''
      }
    }

  }
}
