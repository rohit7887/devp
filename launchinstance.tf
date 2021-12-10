provider "aws" {
 region = "us-east-2"
}



resource "aws_instance" "web" {
  ami               = var.ami_id
  instance_type     = "t2.micro"
  key_name          = var.key_name
  vpc_security_group_ids = [var.sg_id]
  tags = {
    Name = "Launched-via-Terraform"
  }
 
}
