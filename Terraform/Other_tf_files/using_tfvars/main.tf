variable "ami_id_value" {
  description = "ami value of the image"
}

variable "instance_type_value" {
  description = "Value of the instance type"
}

variable "region_value" {
  description = "Name of the region where the instance will be built"
}

provider "aws" {
  region = var.region_value
}

resource "aws_instance" "this" {
  ami                     = var.ami_id_value 
  instance_type           = var.instance_type_value
} 

