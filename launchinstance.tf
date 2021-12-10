provider "aws" {
 region = "us-east-2"
}



resource "aws_instance" {
  ami           = "ami-0dd0ccab7e2801812"
  instance_type = "t2.micro"
  tags = {
    Name = "Launched-via-Terraform"
  }
 
}
