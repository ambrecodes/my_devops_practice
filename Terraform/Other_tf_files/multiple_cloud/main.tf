#example - considering that you are using more than one cloud provider

#azure first

provider "azurerm" {
  skip_provider_registration = true # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}

#aws next

# Configure the AWS Provider
provider "aws" {
  region  = "us-east-1"
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}

#example - using input and output variables 

#input variable
variable "instance_type" {
  description = "EC2 instance type "
  type = string
  default = "t2.micro"
}

#calling an input variable somewhere else
resource "aws_instance" "ec2_instance" {
  ami = "your ami value that you choose"
  instance_type = var.instance_type
}

#output variable 

output "ec2_instance" {
  description = "this is the EC2 instance"
  value = aws_instance.ec2_instance
}

