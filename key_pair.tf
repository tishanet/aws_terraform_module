data "aws_key_pair" "bastion" {
  key_name = "bastion"
  filter {
    name   = "key-name"
    values = ["bastion"]
  }
}
output "name" {
  value = data.aws_key_pair.bastion.key_name
  }