node {    
      def app     
    stage('Pull image and build') {
       	    checkout scm
	    app = docker.build("sachi/test_image")
        	}
 	stage('Test image') {           
            app.inside {            
              
             sh 'echo "Test Passed"' 
		    
            }    
        }     
}

