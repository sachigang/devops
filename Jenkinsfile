node {    
      def app     
    stage('Pull image and build') {
       	    checkout scm
	    app = docker.build("sachi/test_image")
        	}
 	stage('Test image') {           
            app.inside {   
		sh 'echo "Hello World. Greetings from Swiftsense. Have a great day. Its awesome to test the volume mapping." > /home/jenkins/agent/greeting2'
		sh 'echo "Test Passed"' 
		    sh 'chmod 777 send_file.sh'
		    sh './send_file.sh'
		    
            }    
        }     
}

