# Jenkins Installation

[Official Documentation](https://jenkins.io/doc/book/installing/#debian-ubuntu)

## Ubuntu

### Pre-requisite Java

```bash
sudo apt install openjdk-8-jre-headless`
```

### Install Jenkins

https://jenkins.io/doc/book/installing/#debian-ubuntu

```bash
wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install jenkins
```
## CentOS

### Pre-requisites - Java

```bash
`sudo yum install jenkins java-1.8.0-openjdk –y`
```

### Install Jenkins

```bash
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins.io/redhat-stable/jenkins.repo

sudo rpm --import http://pkg.jenkins.io/redhat-stable/jenkins.io.key

sudo yum install jenkins -y

sudo systemctl start jenkins

sudo systemctl enable jenkins
```

```bash
cat /var/lib/jenkins/secrets/initialAdminPassword
```

Access your Jenkins application on a brower

`http:<server-ip>:8080`

Enter intial password. 