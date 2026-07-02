# variables.tf

variable "environment_name" {
  type        = string
  description = "Environment name (dev/staging/prod)"
}

variable "instance_name" {
  type        = string
  description = "Name tag for EC2 instance"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
}

variable "ami_id" {
  type        = string
  description = "AMI ID for EC2"
}

variable "security_group_id" {
  type        = string
  description = "Security group ID"
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID (public subnet)"
}