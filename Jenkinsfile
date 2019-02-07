pipeline{
    agent any
        stages{
            stage('build'){
                steps{
                    sh 'mvn clean package'
		    sudo sh "docker build . -t tomcatwebapp:${env.BUILD_ID}"	
                }
            }
        }
}
