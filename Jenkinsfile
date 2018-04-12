#!/bin/groovy
library(
    identifier: 'fxinnovation@hotfix',
    retriever: legacySCM(
        [
            $class: 'GitSCM', 
            branches: [[name: '*/hotfix']], 
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
  println "Tag: ${scmInfo.tag}"
  println "Commit: ${scmInfo.commit_id}"
  println "Branch: ${scmInfo.branch}"
}
