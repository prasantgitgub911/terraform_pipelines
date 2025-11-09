terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  required_version = ">= 1.5.7"
}

provider "aws" {
  region = "${var.aws_region}"
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  name = "pkp-single-instance"
  ami = "ami-07fb0a5bf9ae299a4"
  instance_type = "t3.small"
  subnet_id     = "subnet-02abb8cc3c6dae053"
  monitoring    = true

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
