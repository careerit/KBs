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


### Kubectl

Kubectl is the client that is used to access Kubernetes clusters from any machine. All deployments and administrative tasks are performed through kubectl. kubectl uses `kubeconfig` file to store credentials and connection details for the clusters. The default location of Kubeconfig is `$HOME/.kube/config` in *Nix systems.


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
