pipeline {
agent any
    stages {
    stage ("skript") {
                    steps {
                sh "ls -la"
                sh "pwd"
                sh "rm -r Mikolaskript"
                sh "git clone https://github.com/vadimchodakowski/Mikolaskript.git"
                sh "ls -la"
                dir ('Mikolaskript') {
                sh "cd /var/lib/jenkins/workspace/pipelinemikola/Mikolaskript"
                sh "pwd"
                sh "ls -la"
                // sh "ls -d */ | tr -d / | grep -v 'jenkins'"
def mylambdas = sh(script: """ls -d */ | tr -d / | grep -v 'jenkins'""", returnStdout: true).trim()
                        def arroflambdas=[]
                            mylambdas.split().each { 
                                arroflambdas << it
                            }
                        // echo "${arroflambdas}"
                        // sh "ls -la && pwd"
                                    for (int i = 0; i < arroflambdas.size(); i++) {
                                        def Mikolaskript = "${arroflambdas[i]}"
                                        dir(Mikolaskript) {
                                        echo "${arroflambdas[i]}"
                                        echo "deploying ${arroflambdas[i]}"
                                                sh "chmod 777 ./skript.sh"
                                                sh "./skript.sh"
                        }
                    }
                }
            }
        }
    }
}