provider "aws" {
  region = var.region_value
}

resource "aws_instance" "this" {
  ami                     = var.ami_id_value 
  instance_type           = var.instance_type_value
} 

