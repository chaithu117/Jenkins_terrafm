pipeline{
    agent any
    stages{
        stage('connect to aws'){
            steps{
                withCredentials([[
                      $class: 'AmazonWebServicesCredentialsBinding',
                       credentialsId: "terraform-jenkins-8am-0307",
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
