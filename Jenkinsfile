pipeline{
    agent any
    stages{
        stage('connect to aws'){
            steps{
                withCredentials([[
                      $class: 'AmazonWebServicesCredentialsBinding',
                       credentialsId: "bb314a7d-0bc6-4256-a56a-1973e8e798fe",
                       accessKeyVariable: 'AWS_ACCESS_KEY_ID',
                        secretKeyVariable: 'AWS_SECRET_ACCESS_KEY'
                              ]]) {
                             sh "aws --version"
                            }
            }
        }
        stage('terraform commands'){
            steps{
                sh "terraform init"
                sh "terraform validate"
                sh "terraform plan"
                sh "terraform apply -auto-approve"
            }
        }
    }
}
