pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID     = credentials('aws-access_key-id')
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-access-key')
        AWS_DEFAULT_REGION    = 'us-east-1'
    }

    stages {
        stage('terraform init') {
            steps {
                echo 'Initializing Terraform..'
                sh 'terraform init'
            }
        }
        stage('terraform validate') {
            steps {
                echo 'Validating Terraform configuration..'
                sh 'terraform validate'
            }
        }
        stage('terraform plan') {
            steps {
                echo 'Planning Terraform changes..'
                sh 'terraform plan -out=tfplan'
            }
        }
        stage('Approval') {
            steps {
                input 'Approve terraform apply ?'

            }
        }
        stage('terraform apply') {
            steps {
                echo 'Applying Terraform changes..'
                sh 'terraform apply -auto-approve tfplan'
            }
        }
        stage('terraform destroy') {
            steps {
                input 'Approve terraform destroy ?'
                echo 'Destroying Terraform-managed infrastructure..'
                sh 'terraform destroy -auto-approve'
            }
        }
    }
}