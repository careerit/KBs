# Ansible

## Concepts

### Control Node

Any *nix machine with python can be used as a Ansible Control node. Install Ansible and you're ready to go with a few configurations.


### Managed Node

Any network devices or servers that is managed with Ansible is called as Managed Node. They are referred to as hosts. No Ansible agent needs to be installed on the worker nodes.

### Inventory

An inventory file is a  list of the nodes that are to be managed by Ansible from control node. 
An inventory is also known as "hostfile"

The default inventory file is located at `/etc/ansible/hosts`

### Module
A module is a unit of code that Ansible executes and each module has a particular use.
User Management to managing VLAN to provisioning infrastructure, there is a module for each of the activities. 
Ansible come with a lot of modules for each activity.

### Tasks
A module in use is called as a task. 
For example, using `yum` module to install a certain package is a task.
Tasks can be run ad-hoc

### Playbooks

A list of tasks together is known as a Playbook. 
They are written in YAML.
Playbooks can also include variables along with tasks.


## Installing Ansible.

```bash
sudo apt update
sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
```

## Setting up inventory

By default ansible's inventory file or hostfile is located at `/etc/ansible/hosts`
This file can be updated with the list of your managed nodes and they can be grouped into different groups.
For instance you can have a group of web servers and another group for DB servers 
Inventory file is a simple text file. 

Example inventory file:

```bash
[web]
192.168.10.1
192.168.10.2

[db]
192.168.10.5
192.168.10.6
```

We could use a custom inventory file by using the `-i` switch

`ansible -i <inventory-file> <commands>`
When adding control node to the inventory add the below line so that ansible wouldn't try to ssh into the control machine as well.
local 
`ansible_collection=local` 

### Working with playbooks

Playbooks are a set of steps that can be performed in sequence or in parallel.
Playbooks are written in YAML.

Read more about Yaml syntax here: https://docs.ansible.com/ansible/latest/reference_appendices/YAMLSyntax.html#yaml-syntax

### Handlers





### Common Modules

- setup
- shell
- apt/yum
- service
- copy
- file /template
- lineinfile













