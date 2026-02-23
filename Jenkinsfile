@Library('shared-library') _  

pipeline {
    agent any
    
    environment {
        APP_NAME = "lean-app"
        DEPLOY_ENV = "${env.BRANCH_NAME == 'main' ? 'prod' : 'staging'}"
    }

    stages {
        stage('Setup') {
            steps {
                cleanWs()
                checkout scm
                // Shared Library Call
                customLogger("Setup Complete")
            }
        }

        stage('Complex Script Execution') {
            steps {
                script {
                    sh "chmod +x scripts/deploy-logic.sh"
                    // Practice passing variables to a script
                    sh "./scripts/deploy-logic.sh ${env.DEPLOY_ENV}"
                }
            }
        }
    }
}