pipeline{
    agent any
    stages {
    
        stage('Setup Python Virtual ENV for dependencies'){
       
      steps  {
            sh '''
            chmod +x envsetup.sh
            ./envsetup.sh
            '''}
        }
        stage('Setup Gunicorn Setup'){
            steps {
                sh '''
                chmod +x gunicorn.sh
                ./gunicorn.sh
                '''
            }
        }
        stage('setup NGINX'){
            steps {
                sh '''
                chmod +x nginx.sh
                ./nginx.sh
                '''
            }
        }
         stages {
        stage('Deploy to ECS') {
            steps {
                script {
<<<<<<< HEAD
                    // Ensure AWS CLI is configured with the correct profile
                    sh "${AWS_CLI} configure set aws_access_key_id ${AKIAXZR54LCHEQBOV36H}"
                    sh "${AWS_CLI} configure set aws_secret_access_key ${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}"
                    sh "${AWS_CLI} configure set region ${ap-south-1}"

                    // Deploy using Docker Compose
=======
                    sh "${AWS_CLI} configure set aws_access_key_id ${env.AWS_ACCESS_KEY_ID}"
                    sh "${AWS_CLI} configure set aws_secret_access_key ${env.AWS_SECRET_ACCESS_KEY}"
                    sh "${AWS_CLI} configure set region ${env.AWS_REGION}"
>>>>>>> 314bb81 (my comit)
                    sh "${DOCKER_COMPOSE} up -d"
                }
            }
        }
    }
}
