provider "aws" {
  region = var.region-name
}

resource "aws_instance" "name" {
  ami = var.image
  instance_type = var.instance_name
  key_name = var.key-pair
  vpc_security_group_ids = [aws_security_group.sg-1.id]

  tags = {
    Name = "web-server"
  }
}

resource "aws_security_group" "sg-1" {
  name = "sg"
  vpc_id = "vpc-0e8c799f8edc4f620"
}