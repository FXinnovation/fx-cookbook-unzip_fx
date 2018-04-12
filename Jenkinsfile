#!/bin/groovy
library(
    identifier: 'fxinnovation@hotfix',
    retriever: legacySCM(
        [
            $class: 'GitSCM', 
            branches: [[name: '*/1']], 
            doGenerateSubmoduleConfigurations: false, 
            extensions: [], 
            submoduleCfg: [], 
            userRemoteConfigs: [[
                credentialsId: 'jenkins_fxinnovation_bitbucket', 
                url: 'https://bitbucket.org/fxadmin/fxinnovation-common-pipeline-library.git'
            ]]
        ]
    )
)
node(){
  scmInfo = fx_checkout()
  println scmInfo.tag
}
