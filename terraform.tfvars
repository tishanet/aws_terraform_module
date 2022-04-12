#Comman
ami_id = "ami-0c02fb55956c7d316"
instance_type = "t2.micro"
name = "bastion"
tags = "bastion"

#Network
vpc_name = "my-vpc"
vpc_cidr = "10.10.0.0/16"
vpc_azs = "us-east-1a"
vpc_public_subnet = ["10.10.10.0/24"]
vpc_private_subnet = ["10.10.20.0/24","10.10.30.0/24"]