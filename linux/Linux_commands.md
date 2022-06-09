# Linux Commands


Note: Linux is case sensitive, most of the commands are in lower case


## Common Commands
Print working directory shows the current directory

`pwd`

Make a Directory

`mkdir <directory>`

Change into directory

`cd <directory>`

List of files & directories

`ls`
`ls -l`

Create an empty file

`touch <filename>`



The syntax of linux command

<command> [optios] <arguments>

touch <filename>



`find`

`grep`







## User Management:

Whenever you create a user a group with the same name is created.

`sudo adduser testone`

A group name with `testone` is created by default.	

If you want to create the user in existing group, use:

`sudo adduser <username> --gid <group_id_of_existing_group>`

To run any command with superuser access, prefix `sudo`  to the command
ex: `sudo apt-get update`

To login as a diferent user/ swith user
`su - <username>`

To see the list of groups to which the current user belongs to.
`groups` 

List of all users and their details
`/etc/passwd`  

Add user
`sudo adduser <username>`

Add Group

`sudo addgroup <groupname>`

Add user to a group

`sudo usermod -aG <groupname> <username>`

Not every user has a sudo permission. User has to be part of `/etc/sudoers` file



## File Permissions




d   rwx r-x r-x baddi baddi

r - Read    		- 4 
w - Write   		- 2 
x - eXecute 		- 1
  - NoPermissions   - 0

rwx r-x r-x
7   5    5

---  0
r--  4
r	  5
rw-  6
rwx  7

774

- r-- --- ---  1 baddi baddi    1696 Mar  5 10:07 <kiran class="pem"></kiran>
   4   0   0


Change Permissions on a file

`chmod xxx <filename>`
`chmod 750 testfile` 
Change the permissions a folder and it's contents
`chmod -R 750 <foldername>`

Change ownership of a file
`chown <newowner> <filename>`








