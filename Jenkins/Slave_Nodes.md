# Slave Nodes

Jenkins has the feature to add slave nodes or worker nodes. These nodes can run build jobs on them.
This helps in distributing the load and also helps in creating custom builds: for instance you could add a Windows Worker machine to run .net or other micrsoft builds. 

## Configuring the Node

The slave node need not have jenkins installed on it. It needs to have java installed in it.

### Java Installation on Ubuntu

```bash
sudo apt install openjdk-8-jre-headless
```

### Java Installation on CentOs

```bash
sudo yum install jenkins java-1.8.0-openjdk –y
```

## Authentication between Master Node and Slave Node

The master node needs to have ssh access to the slave node in order to schedule tasks on the worker node. 
We will use ssh keys to deploy to the node.

1. On your Jenkins master node, generate ssh keys with

```bash
ssh-keygen
```

Copy the contents of public key 

```bash
cat ~/.ssh/id_rsa.pub
```

2. On the worker node, add the master node's public key to the authorized keys `~/.ssh/authorized_keys`


### Adding the node in Jenkins

1. Go to your Jenkins console in your browser. 
2. In the left pane, Click on `Manage Jenkins` -->  `Manage Nodes and Clouds` --> `New node`
3. In the `Node name` , add the IP Address of the Slave Node(or hostmane if master can resolve the hostname of the slave) 
4. Add a Description. Check Permanent Agent. Click OK
5. In the next screen, add a Directory of the slave node, that's where the Build aftifacts will be stored in
   the slave node
6. The node at this time shows offline. Click on the Node and copy the URL. The URL could be somehting like this
`java -jar agent.jar -jnlpUrl http://master-node-ip:8080/computer/slave-node-ip/slave-agent.jnlp -secret 04288be7d7280b93f0926f338d6b4f02d894bdd6aa94993f36720504d45ccc36 -workDir "/jenkins"`

7. Click on the agent.jar and download it on your local machine. 
8. From your local machine scp agent.jar to the slave node

```bash
scp agent.jar jenkins@<slave-node-ip>:~/
```

9. ssh into your slave node and run the above URL 

```bash
java -jar agent.jar -jnlpUrl http://20.12.1.1:8080/computer/slave-node-ip/slave-agent.jnlp -secret 04288be7d7280b93f0926f338d6b4f02d894bdd6aa94993f36720504d45ccc36 -workDir "/jenkins"
```

10. Now your Slave Node is added succesfully. In Jenkins console this node should show as online.


