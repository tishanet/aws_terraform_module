module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = var.name

  ami                    = var.ami_id
  instance_type          = "t2.micro"
  key_name               = data.aws_key_pair.bastion.key_name
  monitoring             = false
  
  root_block_device = [ {volume_size=20 } ]  

  #vpc_security_group_ids = ["sg-12345678"]
  #subnet_id              = "subnet-eddcdzz4"

  tags = {
    Name = "bastion"
    Terraform   = "true"
    Environment = "dev"
    Name = "bastion"
  }
}