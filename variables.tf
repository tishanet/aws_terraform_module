variable "ami_id" {}

variable "instance_type" {}

variable "name" {}

variable "vpc_name" {}

variable "vpc_cidr" {}

variable "vpc_azs" {} 

variable "tags" {}

variable "vpc_public_subnet" {
    type = list(string) 
}

variable "vpc_private_subnet" {
    type = list(string)
}