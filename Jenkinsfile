#!/usr/bin/groovy
/******** PREPAY CICD PIPELINE CREATION **************/
/********  Created By Deepank Sharma Editted on 04/25   **************/
library 'prepay-shared-lib'
K8SPipeline{
        ARTIFACTORY_URL = 'oneartifactorycloud.vpc.verizon.com:8091'
        DOCKER_CREDS_ID = 'svc-bqev_myvprepay'
        LOB             = 'vzw'
        VSAD            = 'bqev'
        BUILD_IMAGE     = 'myv_prepay_build:latest'
        HYGIEIA_APP_NAME= 'PPK8S'
        CLUSTER_NAME   =  'gts'
        CLUSTER_REGION  = 'us-east-1a'
        CLUSTER_ENV   = 'np'
        ZONE      =     'green'
        DEV             = true
  		DEV_NAMESPACE   = 'bqev-dev-masterk8s'
        QA              = false
  		QA_NAMESPACE    = 'bqev-qa-masterk8s'
        PREPROD         = false
  		PREPROD_NAMESPACE    = 'bqev-preprod-masterk8s'
}
