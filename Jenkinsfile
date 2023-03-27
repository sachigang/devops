node {    
      def app     
    stage('Pull image and build') {
       	    checkout scm
	    app = docker.build("sachigang/sachi_test:env.BUILD_NUMBER")
        	}
 	stage('Test image') {           
            app.inside {   
		sh 'echo "Hello World. Greetings from Swiftsense. Have a great day. Its awesome to test the volume mapping." > /home/jenkins/agent/greeting2'
		sh 'echo "Test Passed"' 
		    sh 'chmod 777 send_file.sh'
		    sh './send_file.sh'
		    
            }    
        }  
	stage('Push Image') {
      steps {
        withCredentials([usernamePassword(credentialsId: 'docker-hub-creds', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
          sh "docker login -u $USERNAME -p $PASSWORD"
        }
        sh 'docker push sachigang/sachi_test:env.BUILD_NUMBER'
      }
}

