**MS-TRAVEL-WEBSITE Microservice**
*Author Deepank Sharma*

This is a microservice which is mocking talking to different airline, hotel and car providers to get the possible rate for the customers. Exploring the Completable future functionality offered by JDK 8 for asynchronous programming.

To build this project follow the below steps:

**Step 1: Build docker files and push to Oneartifactory**

Refer to the docker file given above.
```
mvn clean install
docker build -t ms-travel-service:1.0.0 .
docker push ms-travel-service:1.0.0
```

**Step 2:  Create Registry Secret**

Connect to your Kubernetes Cluster and create a registry to enable Kubernetes cluster to access your oneArtifactory location.

```
kubectl create secret docker-registry regsecret  
--docker-server=dockerhub.com  
--docker-username=<your_username>
--docker-password=your_password>  
--docker-email=<a@b.com> -n=<your_namespace>   
```

**Step 3: Create Kubernetes Objects**

There is a folder named kubernetes which contains the following Kubernetes Object definitions.
Take the path of the docker image and replace the image path at Line 29 of deployment.yaml under kubernetes folder.
- deployment.yaml
- hpa.yaml
- svc.yaml
- configmap.yaml
- ingress.yaml

**Step 4: Deploy the app**

To deploy this app on Kubernetes you will have to pass the following commands in the same order:
- kubectl create -f configmap.yaml -n your_namespace
- kubectl create -f deployment.yaml -n your_namespace
- kubectl create -f hpa.yaml -n your_namespace
- kubectl create -f svc.yaml -n your_namespace
- kubectl create -f ingress.yaml -n your_namespace





