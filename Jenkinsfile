pipeline{
    agent any
    stages{
        stage('connect to aws'){
            steps{
                withCredentials([[
                      $class: 'AmazonWebServicesCredentialsBinding',
                       credentialsId: 'Jenkins_trial_awscredentials',
                       accessKeyVariable: 'AWS_ACCESS_KEY_ID',
                        secretKeyVariable: 'AWS_SECRET_ACCESS_KEY'
                              ]]) {
                             sh "aws --version"
                            }
            }
        }
        stage('terraform commands'){
            steps{
                sh "terraform init -auto-downgrade"
                sh "terraform validate"
                sh "terraform plan"
                sh "terraform apply -auto-approve"
            }
        }
    }
}
