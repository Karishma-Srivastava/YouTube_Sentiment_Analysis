# YouTube_Sentiment_Analysis


conda create -n youtube python=3.11 -y

conda activate youtube

pip install -r requirements.txt


## DVC

dvc init

dvc repro

dvc dag



## AWS

aws configure



### Json data demo in postman


https://localhost:5000


```python
{
    "comments": ["This project is good! I learn a lot", "Very bad experience. poor project"]
}
```



chrome://extensions

# AWS -CICD-Deployment-with-Github-Actions

## 1. Login to AWS console

#with specific access

1. EC2 access : it is virtual machine

2. ECR: Elastic registry to save your docker image in aws 

#Description: about the deployment

1. Build docker image of the source code
2. push your decker image to ECR
3. Lauch your ECR
4. Pull your image from ECR in EC2
5. Launch your docker iamge in EC2

# policy:
1. AmazonEC2ContainerRegistryFullAccess

2. AmazonEC2FullAccess

## 3. create ECR repo to store/save docker image
- save the URI: "ECR ID"

## create ec2 machine ubuntu

# 5. open ec2 and install docker in ec3 machine:

# optinal 

sudo apt-get update -y

sudo apt-get upgrade

#required

curl -fsSL https://get.docker.com -o get-docker.sh

sudo sh get-docker.sh

sudo usermod -aG docker ubuntu

newgrp docker

# 6 configure ec2 as self hosted runner:
setting>actions>runner>new self hosted runner> choose os> then run command one by one

# 7. setup github secret

AWS_ACCESS_KEY_ID=

AWS_SECRET_ACCESS_KEY=

AWS_REGION = us-east-1

AWS_ECR_LOGIN_URI =  ecr id

ECR_REPOSITORY_NAME = simple-app