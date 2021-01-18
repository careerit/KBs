# Kubernetes 

## What is it

Kubernetes is a container orchestration platform. It's an open-source platform.

## Use cases:

To run applications/services in containers [Containirized Applications] and to manage their deployments, upgrades seamlessly with minimum down time



## Kubernetes Concepts

### Control Plane: 

Control plane is the part of kubernetes that manages all the worker nodes and various components.

It could be a single VM or a Physical Machine or multiple machines acting as One.




### Worker Nodes:

Worker nodes are the machines where the cotnainerized applications actually run. 

Control Plane and Worker nodes together are referrerd to as Kubernetes Cluster.



### Pod:

Basic unit of deployment in Kubernetes is a Pod. Pod is a single or multiple containers with a shared stroage and a IP address. 


### Replica sets:

Replica set is a declerative configuration that informs the kubernetes cluster the desired number of pods of a specific type.  


### Deployments:

Deployments are replica sets with the options to control your rate of deploying or upgrading and also provides rollback feature


### Service:

Service exposes a group Pods a single unit either internally or externally.


### Kubectl - It's a Command Line utility to manage your cluster from your local machine (laptop) or any VM or Physcial machine. 


### Authentication

ssh command - username/password; username/ssh-key

kubeconfig - this has the details of your cluster and a certificate  






Nginx 1.2
Nginx 1.4




















Test your applications 


Docker-swarm


etcd - key value pair Database


minikube - 

VM -Master
VM - Worker node

kubeadm  
kubespray


Managed Kubernetes Services   - Azure K8s Services, Elastic K8s Serivces, Google Kubernetes Engine; DOKS


Control Plane - 

worker nodes and size 

4 B2s, Dvs3


































