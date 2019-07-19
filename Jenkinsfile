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
		sh 'docker build -t ramdev/create:docker .'
	}
	}	
	stage('push image')
	{
	steps
	{
		sh 'docker push ramdev/cerate:docker'
	}
	}
	stage('Run docker container') 
	{
	steps
	{
		sh 'docker run -itd --name project -p 8761:8761 ramdev/create:docker'
	}	
	}
	}
    }
