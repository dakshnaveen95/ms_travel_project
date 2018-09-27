#!/usr/bin/groovy
/********  Created By Deepank Sharma Editted on 04/25   **************/
library 'test-shared-lib'
K8SPipeline{
        ARTIFACTORY_URL = 'dockerhub.com'
        DOCKER_CREDS_ID = 'my-credentials'
        BUILD_IMAGE     = 'my_build:latest'
        DEV             = true
  	DEV_NAMESPACE   = 'dev'
        QA              = false
  	QA_NAMESPACE    = 'qa'
        PREPROD         = false
  	PREPROD_NAMESPACE    = 'preprod'
}
