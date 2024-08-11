#example for conditional expressions in tf 
provider "aws" {
    region = "us-east-1"
}

variable "environment" {
 default = "production"
}


variable "production_CIDR" {
    description = "CIDR values for production subnet"
    default = "10.0.0.0/16"
  
}

variable "develop_CIDR" {
  description = "CIDR values for development subnet"
  default = "10.3.0.0/24"
}

resource "aws_security_group" "security_group" {
    name = "example-sg"
    description = "Example Security Group"

    ingress {
        from_port = 22
        to_port = 22
        protocol = tcp 

        # CONDITIONAL EXPRESSION : IF THE VALUE OF THE ENVIRONMENT VAR IS PROD, THEN ASSIGN PROD VALUE OR DEVELOP IF ITS NOT
        cidr_blocks = var.environment == "production" ? [var.production_CIDR] : [var.develop_CIDR]
        
        #SYNTAX IS 
        # conditiopn ? [true_value] : [false_value]
    }


}