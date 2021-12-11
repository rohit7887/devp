provider "aws" {
  region = "us-east-2"
  access_key = "AKIA3VUJSLOXCE7V67FG"
  secret_key = "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"
}



resource "aws_instance" "web" {
  ami           = "ami-0dd0ccab7e2801812"
  instance_type     = "t2.micro"
  key_name          = var.key_name
  vpc_security_group_ids = [var.sg_id]
  tags = {
    Name = "Launched-via-Terraform"
  }
 
}
