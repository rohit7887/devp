provider "aws" {
 # access_key = "Access Key"
 # secret_key = "Secret Key"
 region = "us-east-2"
}



resource "aws_instance" "web" {
  ami           = "ami-0dd0ccab7e2801812"
  instance_type = "t2.micro"
  key_name          = var.key_name
  vpc_security_group_ids = [var.sg_id]
  tags = {
    Name = "Launched-via-Terraform"
  }
 
  connection { 
    type = "ssh"
    user = "ubuntu"
    private_key = file(var.pvt_key_name)
    host  = self.public_ip 
  }
}
