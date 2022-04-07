pipeline{
    agent any
    environment {
        root = "docker"
        branch = "docker"
        scmUrl = "https://github.com/isti-q/sample-go-jenkins.git"
        imageName = "sample-go-jenkins"
    }

    stages {
        stage("Docker Version"){
            steps {
                sh "${root} version" 
            }
        }
        stage("Git Clone"){
            steps {
                git branch: "${branch}", url: "${scmUrl}"
            }
        }

        stage("Docker Build"){
            steps {
                sh "${root} build -t ${imageName} ."
            }
        }
    }
}

