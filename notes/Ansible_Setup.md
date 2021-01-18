# Ansible Setup

[Documentation](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#control-node-requirements)

## Pre-requisites:

Ansible can be run from any machine with Python 2 (version 2.7) or Python 3 (versions 3.5 and higher) installed. Red Hat, Debian, CentOS, macOS, any of the BSDs, and all *nix machines can be used as Controll Node. 

<b>Note</b>: <i> <b>Windows</b> is not supported for the control node </i>.

While, Ansible can be run from any machine including laptops, it is recommended to run a system that is close to the systems that are being managed. For instance, if the machines you want to manage are in aws, it's good to run from aws itself and so with Azure or any cloud provider

## Installation

### Debian Family

Including Debian, Ubuntu, Mint, Kali etc

```bash
sudo apt update
sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
```


## Redhat Family

Including RHEL, Centos and Fedora

```bash
# To enable the Ansible Engine repository for RHEL 8, run the following command
sudo subscription-manager repos --enable ansible-2.9-for-rhel-8-x86_64-rpms
# To enable the Ansible Engine repository for RHEL 7, run the following command:
sudo subscription-manager repos --enable rhel-7-server-ansible-2.9-rpms
sudo yum install ansible
```


### From source

You can also build an RPM yourself. From the root of a checkout or tarball, use the make rpm command to build an RPM you can distribute and install.`

```bash
git clone https://github.com/ansible/ansible.git
cd ./ansible
make rpm
sudo rpm -Uvh ./rpm-build/ansible-*.noarch.rpm
```




## Set up Control Nodes

### Enable Public Key authentication

ssh into managed nodes. Add the public key of the Control node to all the Managed nodes

Also enable `Pubkeyauthentication`

go into `/etc/ssh/sshd_config` and change `Pubkeyauthentication` to yes

Restart ssh service
`sudo systemctl restart ssh`












