# AWS_CICD
This is a repository for AWS_CICD
CICD services of AWS are:
AWS Code Commit   
AWS Code Pipeline
AWS Code Build
AWS Deploy

Lets understand complete CICD process using Jenkins as orchestrator:
*)Developer will commit changes to the code in the GIT repository.

*)GitHub is configured with Jenkins with the help of Webhooks. This will trigger the Jenkins pipeline.

*)Jenkins pipeline is a Groovy script written by Devops engineers. This script will implement the Continuous integration and invoke the Continuous delivery.

*)Continuous Integration consists of following steps:
  a)Checkout
  b)Build & unit Testing
  c)Code Scan
  d)Image Build
  e)Image Scan
  f)Image push

*)Now a Days, Continuous delivery is carried out with GitOps approach such as ARGO CD, Flux, Spinnacare etc. Gitops approach performs the Continuous delivery process very smoothly.

*)A separate git repository is maintained for K8s manifests(pod.yam, deployment.yaml, service.yaml etc). Once a new version of Image is pushed to Image Registry(Dockerhub), This new image tag is updated in K8s manifests git repository with the help of Helm Charts. Then this changes are picked by ARGO CD and deploy on the Kubernetes cluster.  

Lets Replicate this with AWS CICD services:
*)Developer will push changes to code in AWS Code Commit.

*)This will trigger the AWS Code Pipeline. AWS code pipeline will invoke Continuous integration and also invokes Continuous Delivery process. 

*)Continuous integration process is implemented with the help of AWS code build service. It consists of following stages:
  a)Checkout
  b)Build & unit Testing
  c)Code Scan
  d)Image Build
  e)Image Scan
  f)Image push

Note: Continuous integration process can also be proceed with the help of Scripts but most common approach followed by organizations is through AWS code build. 

*)Then comes the Continuous delivery process which is carried out with the help of AWS Code Deploy service and Deployment will take place on AWS EC2 or AWS ECS or AWS EKS.

Jenkins vs AWS CICD services:
*)Jenkins is open source. We have the flexibility to use Jenkins pipelines on any cloud. We can configure Jenkins with various tools to enhance its abilities. When organization grows with time, There will be some 100s of Jenkins pipelines which requires huge compute resources

 and organisation have to allocate a devops engineer to manage these pipelines. 

*)Whereas for AWS CICD services, If company's infrastructure is mostly on AWS cloud platform, It will be more easy to work with CICD services of AWS. Even if the pipelines are increased to 100s of numbers , There is no need of allocating a separate team to manage these pipelines because it will be managed by AWS directly.
If organization wants to move to another cloud, then the CICD pipelines scripts written for AWS cannot be used on other cloud platforms. New pipelines has to be written for Azure or GCP cloud platforms.  
