node {    
      def app     
    stage('Pull image and build') {
       	    checkout scm
	    app = docker.build("sachi/test_image")
        	}
 	stage('Test image') {           
            app.inside {            
              sh 'echo "Hello World. Greetings from Swiftsense. Have a nice day" > /flutter_app/greeting1'
             sh 'echo "Test Passed"' 
		    
            }    
        }     
}

