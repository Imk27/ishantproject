pipeline {
    agent any

    parameters {
        string(name: 'USERNAME', defaultValue: 'DevUser', description: 'Enter your name')
        choice(name: 'ENVIRONMENT', choices: ['dev', 'test', 'prod'], description: 'Choose deployment environment')
    }

    stages {
        stage('Greeting') {
            steps {
                echo "Hello, ${params.USERNAME} 👋"
                echo "You selected the '${params.ENVIRONMENT}' environment"
            }
        }
    }
}