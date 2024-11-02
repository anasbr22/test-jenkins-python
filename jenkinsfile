pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                // Cloner le dépôt
                sh 'rm -rf test-jenkins-python'
                sh 'git clone https://github.com/anasbr22/test-jenkins-python'
            }
        }


        stage('Install Dependencies') {
            steps {
                // Utiliser pip3 pour installer les dépendances
                sh 'pip3 install --user -r test-jenkins-python/requirements.txt'
            }
        }

        stage('Run Tests') {
            steps {
                // Définir le PYTHONPATH et exécuter les tests dans une seule commande
                sh 'PYTHONPATH=$PYTHONPATH:test-jenkins-python python3 -m unittest test-jenkins-python/test_app.py'
            }
        }
    }

    post {
        always {
            // Actions à réaliser à la fin (success ou failure)
            echo 'Pipeline terminé.'
        }
        failure {
            // Actions spécifiques en cas d'échec
            echo 'Échec de la pipeline.'
        }
        success {
            // Actions spécifiques en cas de succès
            echo 'Pipeline exécuté avec succès.'
        }
    }
}
