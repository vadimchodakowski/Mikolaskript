#!/bin/bash

# git clone "https://github.com/vadimchodakowski/Mikolaskript.git"
# ls -d */ | tr -d / | grep -v 'jenkins'

# def mylambdas = sh(script: """git diff --name-only HEAD HEAD~1 | cut -d/ -f1 | tail -n 10 | sort -u""", returnStdout: true).trim()
#                         def arroflambdas=[]
#                             mylambdas.split().each { 
#                                 arroflambdas << it
#                             }
                        echo "${arroflambdas}"
                                    for (int i = 0; i < arroflambdas.size(); i++) {
                                        def pathTocodebase = "${arroflambdas[i]}"
                                        dir(pathTocodebase) {
                                        echo "${arroflambdas[i]}"
                                        echo "deploying ${arroflambdas[i]}"
                                                sh "chmod 777 ./deploy.sh"
                                                sh "./deploy.sh"
                                        }
                                    }




