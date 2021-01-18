# User Management


All user manangment commands need to be executed with `sudo`
useradd

adduser

usermod to modify user groups or home directory 

deluser

`sudo adduser <username>`

Everytime an user account is created a group with the same name is also created by default. for example, if a user called `testuser` is created and a group with the name `testuser` is also create.
User Groups. A User is part of his default group.

To create a user in a different group `--ingroup` option can be used.
`sudo adduser <newusername> --ingroup <groupname>`

su  -- Switch user ; to login as a different user
`su - <username>`

whoami -- to find the username of the logged in user.
`whoami`
sudo --  Super User Do (Shut up and DO)

passwd -- Used to reset a password for a user
`sudo passwd <username>`

exit - logout
`exit`

usermod - to change the attributes of a user
To add an user to an existing group we use usermod

`sudo usermod -aG <groupname> <username>`


All the user details are stored in the file `/etc/passwd`
    not recommended to edit these files, use usermod instead
All the group details are stored in the file `/etc/group`
























