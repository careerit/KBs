## Introduction

Shell script or Bash script is a set of instructions to be peformed in a sequential manner or in a logical order subject to condtions.

Note: Bash is the default Shell in most Linux  distributions, hence  Bash scripting and Shell scripting or the same. 


## Syntax

Linux Shell script starts with the the below instruction informing that this program has to be executed by `bash`
```
#!/bin/bash
```

This is followed by the commands you want to be executed in order

### Example


The below example prints "Hello World" on the screen

Let's create a file called `helloworld.sh`  and add the below content

```bash
#!/bin/bash

echo "Hello World"
```

Use comments to make the shell script readable and easy to understand for debugging for further development
Any statement starting with `#` is a comment 
Let's edit  `helloworld.sh`  add a comment in the script
```bash
#!/bin/bash

# The below statement prints Hello World
echo "Hello World"
```

## Executing a Shell Script. 

The user has to have execute rights on  Shell script (the file in which the script is saved)
To make the shell script executable run one of the below commands

```bash
chmod +x helloworld.sh
```
Gives execute permission to every one
or 

```bash
chmod 755 helloworld.sh
```

To execute the script go to the folder where the script is located and execute as below. Let's say the `helloworld.sh` in your `~/scripts`  then you execute the program as below:
