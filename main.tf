terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.2.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

data "aws_security_group" "default_sg" {
  filter {
    name   = "group-name"
    values = ["default"]
  }
  
  filter {
    name   = "vpc-id"
    values = [module.vpc.vpc_id]
  }
}

module "vpc" {
  source              = "./modules/vpc"
  name_prefix         = "dev"
  availability_zone   = "eu-west-3a"
}

module "ec2" {
  source              = "./modules/ec2"
  ami_id              = var.ami_id
  instance_type       = var.instance_type
  subnet_id           = module.vpc.public_subnet_id
  security_group_ids  = [data.aws_security_group.default_sg.id]
  key_name            = var.key_name
  name_prefix         = var.name_prefix
  environment         = var.environment
}