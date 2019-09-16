pipeline{
    agent any
        stages{
            stage('build'){
                steps{
                    sh 'mvn clean package'	
                }
                POST {
                   success{
                       archiveArtifacts artifacts: '**/target/**.war'
                   }
                }
            }
            stage('Deployments'){
                sh 'cp /var/lib/jenkins/tomcat-demo.pem **/target/*.war /home/hima/tomcat/apache-tomcat-8.5.45/webapps'   

            }
        }
}
