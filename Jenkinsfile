node {
    try{
        notify("Started!!!!!")
        stage ('Checkout'){
             git 'https://github.com/ahmedmisbah/devops-sample-java-project.git'
        }
        def project_path = "ReverseDictionary-boot/"
        dir(project_path) {
             stage 'compiling, test, build'
             sh 'mvn clean package'
             stage 'archival'
             archiveArtifacts 'target/*.jar'
        }
     notify("SUCCESS!")
    }catch (err) {
        notify("ERROR!: ${err}")
        currentBuild.result = 'FAILURE'
    
}
    
    }
    
    def notify(status){
        emailext (
            body: "${status} JOB ${env.JOB_NAME} check ${env.BUILD_URL}", 
            subject: "Job ${env.JOB_NAME} ${env.BUILD_NUMBER} is waiting for input", 
            to: 'm.ayman2612@gmail.com'
        )
    }
