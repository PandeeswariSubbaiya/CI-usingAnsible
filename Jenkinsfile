node{
    stage('SCM Checkout'){
     git 'https://github.com/PandeeswariSubbaiya/CI-usingAnsible.git'
   }
   stage('maven-buildstage'){
        def mvnHome =  tool name: 'maven3', type: 'maven'   
            sh "${mvnHome}/bin/mvn clean package"
   }
   stage('Dependency check'){
        dependencyCheck additionalArguments: '--format	HTML', odcInstallation: 'Dp-Check'
    }
    stage('SonarQube Analysis'){
        def mvnHome =  tool name: 'maven3', type: 'maven'
	        withSonarQubeEnv('sonarqube') { 
	          sh "${mvnHome}/bin/mvn sonar:sonar"
	          sh "cat target/sonar/report-task.txt"
	        }
	    }
		stage("Quality Gate"){
	    timeout(time: 1, unit: 'HOURS') {
	       def qg = waitForQualityGate()
	        if (qg.status != 'OK') {
	           // error "Pipeline aborted due to quality gate failure: ${qg.status}"
	             catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE'){
	                 sh "exit 1"
	             }
	        }
	    }
	}
    stage('ansible'){
       ansiblePlaybook credentialsId: 'private-key', disableHostKeyChecking: true, installation: 'ansible', inventory: 'dev.inv', playbook: 'tomcat.yaml'
   }
        stage('OWASP DAST') {
            sh '''
            docker pull owasp/zap2docker-stable
            docker run -dt --name owasp owasp/zap2docker-stable sh
            docker exec owasp mkdir /zap/wrk
            docker exec owasp zap-baseline.py -t http://54.167.19.253:8080/ -x report.xml -I
            echo $WORKSPACE
            docker cp owasp:/zap/wrk/report.xml $WORKSPACE/report.xml
            docker stop owasp && docker rm owasp
            '''
            }
        }
