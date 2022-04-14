module "bastion_sg" {
  source = "terraform-aws-modules/security-group/aws"
  name = "bastion_sg" 
  description = "Security group for Bastion"
  vpc_id = module.vpc.vpc_id # connect to VPC via ID 
  
  ingress_cidr_blocks = [var.sg_from_all] # allow traffic from anywhere
  ingress_rules = ["ssh-tcp"] # template for SSH 
  egress_rules = ["all-all"] # template for the outgoing traffic to 0.0.0.0/0
  tags = var.common_tags
}