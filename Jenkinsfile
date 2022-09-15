pipeline {
    agent { label 'linux' }

    stages {
        stage('Hello') {
            steps {

                sh '''
                 aws ecr get-login-password --region eu-central-1 | docker login --username AWS --password-stdin 352708296901.dkr.ecr.eu-central-1.amazonaws.com
                 docker build -t alexeyimapolybot:0.0.$BUILD_TAG .
                 docker tag alexeyimapolybot:0.0.$BUILD_TAG 352708296901.dkr.ecr.eu-central-1.amazonaws.com/alexeyimapolybot:0.0.$BUILD_TAG
                 docker push 352708296901.dkr.ecr.eu-central-1.amazonaws.com/alexeyimapolybot:0.0.$BUILD_TAG
                '''

            }
        }
    }
}
