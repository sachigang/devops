node {    
      def app     
    stage('Pull image and build') {
       	    checkout scm
	    app = docker.build("sachi/test_image")
        	}
 	stage('Test image') {           
            app.inside {   
		sh 'echo "Hello World. Greetings from Swiftsense. Have a great day." > /home/jenkins/agent/workspace/test_pipeline_volume/greeting1'
		sh 'echo "Test Passed"' 
		    sh 'chmod 777 send_file.sh'
		    sh './send_file.sh'
		    
            }    
        }     
}

