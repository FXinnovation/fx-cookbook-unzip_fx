#!/bin/groovy
@Library('com.fxinnovation.fxinnovation-common-pipeline-library@feature/chef1') _
node(){
  stage('checkout'){
    checkout scm
  }
  stage('test'){
    list = cookbook.listDependencies()
    println list 
  }
}
