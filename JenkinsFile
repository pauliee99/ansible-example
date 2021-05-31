pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                // Get some code from a GitHub repository
                git branch: 'jenkins', url: 'https://github.com/pauliee99/ansible-example.git'

                
            }
        }
        
        stage('Test') {
            steps {
                sh '''
                    python3 -m venv myvenv
                    source myvenv/bin/activate
                    pip install -r requirements.txt
                    cd movies
                    cp movies/.env.example movies/.env
                    python manage.py makemigrations
                    python manage.py migrate
                    ./manage.py test'''
            }
        }

        stage('Deploy') {
            steps {
                sshagent (credentials: ['ssh-deploy']) {

                    sh '''
			pwd
			echo $WORKSPACE
                        ansible-playbook -i ~/workspace/ansible-test/hosts.yml -l deploymentservers ~/workspace/ansible-test/playbooks/check.yml
                    '''
                }
            }
        }
    }
}
