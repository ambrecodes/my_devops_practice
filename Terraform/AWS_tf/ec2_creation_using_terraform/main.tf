provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "this" {
  ami                     = "ami-0ae8f15ae66fe8cda" #get the accurate AMI ID from AWS 
  instance_type           = "t2.micro"
} 

