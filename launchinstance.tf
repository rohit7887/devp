provider "aws" {
 access_key = "AKIA3VUJSLOXGGJLIR5U" 
 secret_key = "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"
 region = "us-east-2"
}



resource "aws_instance" "web" {
  ami           = "ami-0dd0ccab7e2801812"
  instance_type = "t2.micro"
  tags = {
    Name = "Launched-via-Terraform"
  }
 
}
