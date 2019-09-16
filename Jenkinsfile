pipeline{
    agent any
        stages{
            stage('Build'){
                steps{
                    sh 'mvn clean package'	
                }
                post {
                   success {
                       archiveArtifacts artifacts: '**/target/**.war'
                   }
                }
            }
            stage('Deployments'){
                steps{
                sh 'cp /var/lib/jenkins/tomcat-demo.pem **/target/*.war /home/hima/tomcat/apache-tomcat-8.5.45/webapps'   
                }
            }
        }
}
