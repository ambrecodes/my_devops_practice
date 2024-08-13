 provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source = "../../AWS_tf/ec2_creation_using_terraform"
#then provide variable values according to your preference
}

