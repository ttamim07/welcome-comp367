pipeline {
    agent any

    tools {
        // Use the Maven version configured as "M3" in Jenkins.
        maven "M3"
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout the code from GitHub repository.
                git branch: 'main', url: 'https://github.com/ttamim07/welcome-comp367.git'
            }
        }
        stage('Maven Build') {
            steps {
                // Run Maven build using batch command for Windows.
                bat "mvn clean compile"
            }
        }
    }
}
