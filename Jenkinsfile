pipeline {
    agent any

    environment {
        dotenv = loadEnvFile '.env' // This requires a plugin like 'Environment File'
    }

    stages {
        stage('Setup Python Virtual ENV for dependencies') {
            steps {
                sh '''
                chmod +x envsetup.sh
                ./envsetup.sh
                '''
            }
        }
        stage('Setup Gunicorn Setup') {
            steps {
                sh '''
                chmod +x gunicorn.sh
                ./gunicorn.sh
                '''
            }
        }
        stage('Setup NGINX') {
            steps {
                sh '''
                chmod +x nginx.sh
                ./nginx.sh
                '''
            }
        }
        stage('Deploy to ECS') {
            steps {
                script {
                    sh "${env.AWS_CLI} configure set aws_access_key_id ${env.AWS_ACCESS_KEY_ID}"
                    sh "${env.AWS_CLI} configure set aws_secret_access_key ${env.AWS_SECRET_ACCESS_KEY}"
                    sh "${env.AWS_CLI} configure set region ${env.AWS_REGION}"
                    sh "${DOCKER_COMPOSE} up -d"
                }
            }
        }
    }
}
