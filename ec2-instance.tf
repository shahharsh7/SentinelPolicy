terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.9.0"
    }
  }
}
provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "Harsh-Ubuntu-instance" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "Harsh machine"
  }

}