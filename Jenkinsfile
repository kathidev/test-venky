 pipeline
  {
   agent any
   tools
  {  
    jdk 'JAVA_HOME'
    maven 'MAVEN_HOME'
       }
     }
      stages
	{
         stage('checkoutstage')
	{
	steps
	{
	  sh 'checkout scm'
        }
      }
    }
        stage('contbuild') 
	{
	 steps
         { 
            sh 'mvn pacakge'
	     }
	   }

	
