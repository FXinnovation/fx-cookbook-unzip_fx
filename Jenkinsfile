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
      currentCookbook = list.cookbooks[i].name
      println "#### COOKBOOK: $currentCookbook"
      sh "knife supermarket cookbook ${currentCookbook} -F json"
      println "####"
    }
  }
}
