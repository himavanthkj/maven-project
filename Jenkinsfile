pipeline{
    agent any
        stages{
            stage('build'){
                steps{
                    sh 'mvn clean package'
		    sh "sudo docker build . -t tomcatwebapp:${env.BUILD_ID}"	
                }
            }
        }
}
