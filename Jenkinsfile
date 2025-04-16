pipeline {
    agent any
    
    tools {
        terraform 'terraform-jenkins'
    }

    stages {
        stage('Git') {
            steps {
                git branch: 'main', url: 'https://github.com/pranayentc/Terraform-jenkins.git'
            }
        }
        
        stage('terra') {
            steps {
            dir('/var/lib/jenkins/workspace/Terraform/'){
            withCredentials([aws(accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'AWS', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY')])
               {
                    sh "terraform init"    
                    sh "terraform plan"
                     //sh "terraform apply --var-file terraform.tfvars --auto-approve"
                    sh "terraform destroy --auto-approve"
                }
            }
            }
        }
    }
        post {
        always {
            cleanWs()
        }
    }
}
