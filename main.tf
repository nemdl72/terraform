terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
 
  required_version = ">= 0.14.9"
}
 
provider "aws" {
  profile = "default"
  region  = "eu-north-1"
}
 
resource "aws_instance" "app_server" {
  ami           = "ami-090793d48e56d862c"
  instance_type = "t3.micro"
 
  tags = {
    Name = "Instanciaejemplo"
  }
}