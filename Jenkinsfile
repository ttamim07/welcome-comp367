pipeline {
    agent any

    tools {
        // Use the Maven version configured as "M3" in Jenkins.
        maven "M3"
    }

    stages {
        stage('Checkout') {
            steps {
                echo 'Checking out the code from GitHub...'
                git branch: 'main', url: 'https://github.com/ttamim07/welcome-comp367.git'
            }
        }
        stage('Maven Build') {
            steps {
                echo 'Building the Maven project...'
                // Run Maven build using batch command for Windows.
                bat "mvn clean compile"
            }
        }
        stage('Maven Test') {
            steps {
                echo 'Running Maven tests...'
                // Execute the Maven test lifecycle stage.
                bat "mvn test"
            }
        }
        stage('Archive Artifacts') {
            steps {
                echo 'Archiving build artifacts...'
                // Archive the generated WAR or JAR files.
                archiveArtifacts artifacts: '**/target/*.war', fingerprint: true
            }
        }
    }

    post {
        success {
            echo 'Pipeline executed successfully!'
        }
        failure {
            echo 'Pipeline failed. Check the logs for details.'
        }
    }
}
