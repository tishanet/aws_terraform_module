module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = var.name

  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = data.aws_key_pair.bastion.key_name
  monitoring             = false
  
  root_block_device = [ {volume_size=20 } ]  
  vpc_security_group_ids = [module.bastion_sg.security_group_id]
  subnet_id              = module.vpc.public_subnets[0]
  tags = var.common_tags
}