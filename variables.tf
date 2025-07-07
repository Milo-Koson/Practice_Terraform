variable "aws_region" {
  description = "AWS Region (France)"
  type        = string
  default     = "eu-west-3"
}

variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
}

variable "key_name" {
  description = "The name of the key pair to use for SSH access to the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The type of EC2 instance to launch"
  type        = string
  default     = "t2.micro"
}

variable "name_prefix" {
  description = "Prefix for resource names"
  type        = string
  default     = "dev"
}

variable "environment" {
  description = "The environment for the resources (dev, staging, prod)"
  type        = string
  default     = "dev"
}