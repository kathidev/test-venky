 pipeline {
   agent any
   tools
  {  
    jdk 'JAVA_HOME'
    maven 'MAVEN_HOME'
       }
      stages
	{
         stage('checkoutstage')
	{
	steps
	{
	  checkout scm
        }
      }
        stage('Build') 
	{
	 steps
         { 
            sh 'mvn clean package -DskipTests'
	     }
	  }
	stage('docker build')
	{
	steps
	{
		sh 'docker build -t venki9441/docker:kathiwar .'
	}
	}	
	stage('push image')
	{
	steps
	{
		withDockerRegistry([credentialsId: 'docker-hub', url: "https://index.docker.io/v1/"]){
		sh 'docker push venki9441/docker:kathiwar'
	}
	}
	}
	stage('Run docker container') 
	{
	steps
	{
		sh 'docker run -itd --name project -p 8761:8761 venki9441/docker:kathiwar'
	}	
	}
	}
    }
