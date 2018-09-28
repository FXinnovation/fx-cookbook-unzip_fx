#!/bin/groovy
@Library('com.fxinnovation.fxinnovation-common-pipeline-library@feature/chef1') _
node(){
  stage('checkout'){
    checkout scm
  }
  stage('test'){
    list = cookbook.listDependencies()
    for(i = 0; i < list.cookbooks.size(); i++){
      currentCookbook = list.cookbooks[i]
      if(currentCookbook.containsKey('location')){
        println "Skipping ${currentCookbook.name}"
      }else{
        println "#### COOKBOOK: $currentCookbook.name"
        cookbook = knife.supermarketShow(
          name: currentCookbook.name,
          format: json,
          returnCookbook: true
        )
        for (j = 0; j < cookbook.versions.size(); j++){
          version = cookbook.versions[j].split('/').last()
          knife.supermarketDownload(
            name: currentCookbook.name,
            version: version
          )
        }
        println "####"
      }
    }
  }
}
