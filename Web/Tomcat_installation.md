Tomcat installation
# TomCat installation 


## Install Java
	
```bash
sudo apt-get update
sudo apt-get install default-jdk
```


## Prerequisites for TomCat

Create a new user group 

```bash
sudo groupadd tomcat
```
Creat a user called tomcat and add add to the group tomcat

```bash
sudo useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat
```



### Download tomcat

create a new folder

```bash
sudo mkdir /opt/tomcat 
cd /opt/tomcat
```

```
sudo curl -O http://apachemirror.wuchna.com/tomcat/tomcat-8/v8.5.54/bin/apache-tomcat-8.5.54.tar.gz
tar xvf apache-tomcat-8.5.54.<tar class="gz"></tar>