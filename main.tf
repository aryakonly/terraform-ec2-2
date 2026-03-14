terraform {
  backend "s3" {
    bucket = "my-bucket-backend-1"
    key = "terraform.tfstate"
    region = "ap-south-1"
  }
}

provider "aws" {
  region = var.region-name
}

resource "aws_instance" "name" {
  ami = var.image
  instance_type = var.instance_name
  key_name = var.key-pair
  vpc_security_group_ids = var.sg
  user_data = base64encode(file("userdata.sh"))
  tags = {
    Name = "web-server"
  }
}