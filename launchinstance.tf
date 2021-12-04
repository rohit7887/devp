provider "aws" {
 access_key = "AKIA3VUJSLOXJZCCF4JU"
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
