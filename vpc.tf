module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  #name = var.vpc_name
  cidr = var.vpc_cidr

  azs             = var.vpc_azs
  public_subnets  = var.vpc_public_subnet
  private_subnets = var.vpc_private_subnet

  tags = {
      name = "bastion"
  }
}