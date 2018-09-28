#!/bin/groovy
@Library('com.fxinnovation.fxinnovation-common-pipeline-library@feature/chef1') _
node(){
  stage('checkout'){
    checkout scm
  }
  stage('test'){
    list = cookbook.listDependencies()
    println list 
    for(i = 0; i < list.cookbooks.size(); i++){
      currentCookbook = list.cookbooks[i]
      if(currentCookbook.containsKey('location')){
        println "Skipping ${currentCookbook.name}"
      }else{
        println "#### COOKBOOK: $currentCookbook.name"
        sh "docker run --rm chef/chefdk knife supermarket show ${currentCookbook.name} -F json"
        println "####"
      }
    }
  }
}
