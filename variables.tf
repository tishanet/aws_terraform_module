variable "ami_id" {}

variable "instance_type" {}

variable "name" {}

variable "vpc_name" {}

variable "vpc_cidr" {}

variable "vpc_hostname" {
   type = bool
   default = true  
}

variable "vpc_azs" {
    type = list(string)
}

variable "vpc_public_subnet" {
    type = list(string) 
}

variable "vpc_private_subnet" {
    type = list(string)
}

variable "sg_from_all" {}

variable "common_tags" {
    type = map
    default = {
        name = "bastion"
        dev = "terraform"
    }
  
}