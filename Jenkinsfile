#!/bin/groovy
//fx_cookbook()
@Library('com.fxinnovation.fxinnovation-common-pipeline-library@feature/chefCookbookUpload') _
@Library('com.fxinnovation.public-common-pipeline-jenkins@feature/chefEnvironment') __

fxUploadCookbook([
    credentialId: 'chef-server-demo',
    serverUrl: 'https://chef-server.dazzlingwrench.fxinnovation.com/organizations/fx',
    cookbookName: 'unzip_fx',
    publish: true,
  ]
)
