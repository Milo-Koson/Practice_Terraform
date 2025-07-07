variable "name_prefix" {
  description = "The name prefix to use for all resources"
  type        = string
}

variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The type of EC2 instance to launch"
  type        = string
  default     = "t2.micro"
}
variable "subnet_id" {
  description = "The ID of the subnet in which to launch the EC2 instance"
  type        = string
}

variable "security_group_ids" {
  description = "The security group IDs to associate with the EC2 instance"
  type        = list(string)
}

variable "key_name" {
  description = "The name of the key pair to use for SSH access to the EC2 instance"
  type        = string
}

variable "environment" {
  description = "The environment for the resources (dev, staging, prod)"
  type        = string
  default     = "dev"
}