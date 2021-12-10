provider "aws" {
 region = "us-east-1"
 access_key= "AKIA3VUJSLOXGGJLIR5U"
  secret_key= "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"
}



resource "aws_instance" "web" {
  ami           = "ami-083654bd07b5da81d"
  instance_type     = "t2.micro"
  key_name          = var.key_name
  vpc_security_group_ids = [var.sg_id]
  tags = {
    Name = "Launched-via-Terraform"
  }
 
}
