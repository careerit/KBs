# AWS CLI

## Overview

AWS CLI is the command line interface to manage AWS account programatically. AWS CLI let's you read/list, create, update and delete resources in your AWS accounts (subject to the user access). AWS CLI offers uniform functionality across different Operating Systems. 


## Installation

### Windows 

Download aws cli from [here](https://awscli.amazonaws.com/AWSCLIV2.msi) and run the installer .

### Linux 

Follow the instructions listed [here](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-linux.html#cliv2-linux-install) and install aws cli on Linux Systems 


[Reference](https://aws.amazon.com/cli/)


## Configure AWS CLI

Once  you install aws cli, you need to configure your profile. To work with aws cli,  a user needs to have `Programmatic Access` enabled in IAM and need to have active
ACCESS KEY ID and SECRET ACCESS KEY (generated in IAM after enabling `Programmatic Access` )


### Generate Access Key 

- Go to IAM 
- Click on the user for whom you want to generate Access Key
- Click on Create access key
![b2a0c51fc2673550b4c5c66a3e0932cb.png](:/2d055548da874385aedaad74518a80a4)
- Copy the Access key ID and Secret key ID and share with the user.

Once you have the Access key and secret key, configure it with your aws CLI using the below command

```
aws configure 
```

You will be prompted for the following:

- AWS Access Key ID 
- AWS Secret Access Key
- Default region name
- Default output format


## Syntax

aws cli has a very simple syntax

```
aws <service> <action> --[arg1]  [val1]  --[arg2]  [val2]
```

Example

The below command describes all `ec2` instances in the region `us-east-1`

```bash
aws ec2 describe-instnaces --region us-east-1
````

## Query


- Get the AMI Ids that contain the name: Ubuntu
```bash
aws ec2 describe-images \
  --query 'Images[?Contains(Name, `ubuntu`) == `true`]|[0:5].[ImageId,Name]' \
  --output text
```  
  
  ```bash
aws ec2 describe-images \
   --filters Name=name,Values=ubuntu/images/hvm-ssd/ubuntu-trusty-*-amd64* \
   --query 'Images[*].[ImageId,CreationDate]' --output text  sort -k2 -r | head -n1
```

```bash 
aws ec2 describe-images --filters "Name=name,Values=ubuntu*18.04*"  --query "sort_by(Images, &CreationDate)[].[Name, ImageId, Description]"
```

```bash
aws ec2 describe-instances --region ap-south-1  --query '[Reservations[].Instances[].PublicIpAddress]'
```


