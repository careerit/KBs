# Kubernetes 

## Overview

Kubernetes is an Open-source container orchestration platform. Kubernetes helps in the management of deployment, scaling and management of containers with high availability and self-healing capability. 

Kubernetes can run a single VM or a Physical Machine or multiple machines acting as one.


Kuberntes cluster is made of two planes:

### Control Plane
Control plane is the part of kubernetes that manages all the worker nodes and various components.
Control plane comprises of the  following packages:
    1. Kube-api Server
    2. kube scheduler
    3. etcd - A highly available key-value pair database
    4. Controller Managers

Control plane is one or more machines running the above components.
One VM or physical machine with the above components can act as control plane but for high availability control plane is usually managed by 3 or more VMs. (To maintain [etcd quorum](https://etcd.io/docs/v3.3/faq/) we'd need odd number of nodes[ 3 or 5 or 7 VMs])

### Worker Plane

Worker nodes are the machines where the cotnainerized applications actually run. The number of worker nodes depends on the applications' requirements and desired capacity. 

Control Plane and Worker nodes together are referrerd to as Kubernetes Cluster.


## Flavours of Kubernetes

### K8s on Bare Metal

### Managed Kubernetes [Cloud]

- EKS 
     Elastic Kubernetes Service  
- AKS
    Azure Kubernetes Service ()
- GKE
    Google Kubernetes Engine
- DOKS

    Digital Ocean Kubernetes Engine

### Managed Kubernetes [PAAS]
    - Openshift
    - Rancher


### Minikube

Minikube is a local Kubernetes cluster which can be run on any Windows, Linux or Mac computer. 



### Authentication with Kubernetes Cluster

Kubernetes cluster is managed through a Command line tool called **kubectl**. 
**kubectl** can be installed on any Windows/Linux/Mac machine and can be used to manage kubernetes clusters. 

All deployments and administrative tasks are performed through kubectl. 

kubectl uses `kubeconfig` file to store credentials and connection details for the clusters. The default location of Kubeconfig is `$HOME/.kube/config` in *Nix systems. IN windows, it is stored under `c:\users\<username>\.kube\` 

Please refer [this](https://kubernetes.io/docs/tasks/tools/)  for kubectl installation.



## Kubernetes Objects

### Namespace:

Namespace provides logical isolation of Kubernetes objects within the same cluster. A namespace is a virtual folder that holds the resources and isolates from other namespaces. For instance, you could run multiple environments of applications in different namespaces.


### Pod:

One or more containers with a shared stroage and a IP address is known as a Pod. Pod is the basic unit of deployment. It means you cannot deploy containers directly onto the cluster, but they are rather deployed as Pods.


### Replica sets:

Replica set is a declerative configuration that informs the kubernetes cluster the desired number of pods of a specific type.  


### Deployments:

Deployments are replica sets with the options to control your rate of deploying or upgrading and also provides rollback feature


### Service:

Service exposes a group Pods a single unit either internally or externally.


### Ingress:

A Kubernetes object that manages external access to the service in a cluster. Ingress provides load balancing , SSL termination and name based virtual hosting.
Ingress exposes HTTP and HTTPS routes from outside the cluster to services within the cluster. Traffic routing is controlled by rules defined on the Ingress resource

### Ingress Controller:

For the ingress to work, Kubernetes clusters need an Ingress Controller. Ingress controller is responsible for reading the configuration of ingress resources and route traffic accordingly.

Ingress controller interact with Cloud controllers and create load balancers dynamically.



## Installation


### EKS Installation

The easiest way to create EKS cluster is by using `eksctl` a specialized command line tool to create, update and delete EKS clusters.  

- Prerequisites:
    - [aws cli](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
    - [eksctl](https://docs.aws.amazon.com/eks/latest/userguide/eksctl.html) 
    - IAM user with read & write permissions on EKS and EC2

Once you have `aws cli` and `eksctl` installed, please save the below config as file (ex: eks.yaml)



```yaml
apiVersion: eksctl.io/v1alpha5
kind: ClusterConfig
metadata:
  name: eksdemo
  region: us-east-1

nodeGroups:
  - name: ng-1
    labels:  
      worker: default
    instanceType: m4.xlarge
    desiredCapacity: 2
    minSize: 2
    maxSize: 3
availabilityZones: ['us-east-1a', 'us-east-1b', 'us-east-1c']
```

The above configuration deploys a Cluster with the name `eksdemo` in the region `us-east-1` with a minimum of 2 instances and maximum 3 instances each of the size mx.xlarge. Youc an  upload the values as per your requirement and deploy this cluster with the below command

```bash
eksctl apply -f eks.yaml 
```

Note: The above config should be stored in the `eks.yaml` file.

Once the deployment is completed, run the below command to store the credentials in your kubeconfig

```bash
aws eks update-kubeconfig --region us-east-1 --name  eksdemo
```
Note: This is assuming that you have created a cluster named `eksdemo` in `us-east-1` region

The above command will add the credentials of your eks cluster in your kubeconfig.

To verify, run the below command

```bash
kubectl config get-contexts
```

Also to see the number of nodes in your kubernets cluster, run the below:

```bash
kubectl get nodes
```

To delete the cluster run the following command

```bash
eksctl delete cluster -f eks.yaml  
```

### AKS installation

Azure Kubernetes services cluster can be created with the below commands

#### Prerequisites

    [AZ CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) 
    An account in Azure subscription with full rights on AKS service

- Create a Resource Group

```bash
az group create --resource-group aks --region eastus
```


- Create Azure Kubernetes Cluster

```bash
az aks create --resource-group aks --name aksdemo  --node-vm-size Standard_D3_v2 --node-count 2 --location eastus 
```

The above command creates a Kubernetes cluster named `aksdemo` in hte resource group `aks` in the eastus region with 2 nodes each of the size `Standard_D3_v2`



- To add the credentials to your KUBECONFIG, run the below command

```bash
az aks get-credentials --name aks --resource-group aksdemo
```

- To verify if the cluster is added to your KUBECONFIG, run the following

```bash
kubectl config get-contexts
```

The output should `aksdemo` as one of the contexts

- Set the aks cluster as the current context 

```bash
kubectl config use-context aksdemo
```

- To check the nodes in the deployment, run the following:

```bash
kubectl get nodes
```


