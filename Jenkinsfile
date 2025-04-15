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
                sh "terraform -v"
                dir('/var/lib/jenkins/workspace/Pranay Kanoje/') {
                    sh "terraform init"    
                    sh "terraform plan"
                    //sh "terraform apply --var-file terraform.tfvars --auto-approve"
                    sh "terraform destroy --auto-approve"
                }
                
            }
        }
    }
}
