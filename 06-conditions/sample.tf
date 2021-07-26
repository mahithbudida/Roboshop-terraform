resource "aws_instance" "sample" {
  //count                 = 0
  ami                   = "ami-074df373d6bafa625"
  instance_type         = var.TYPE ? var.TYPE : "t3.micro"
  //vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags                  = {
    Name                = "Sample"
  }
}

provider "aws" {
  region = "us-east-1"
}

variable "TYPE" {}