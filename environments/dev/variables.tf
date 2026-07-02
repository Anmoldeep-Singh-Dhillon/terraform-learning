# variables.tf

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
  default     = "t3.micro"
}

variable "instance_name" {
  type        = string
  description = "Name tag for EC2 instance"
  default     = "first-terraform-instance"
}

variable "aws_region" {
  type        = string
  description = "AWS region"
  default     = "ap-south-1"
}

variable "ami_id" {
  type        = string
  description = "AMI ID for EC2 instance (Ubuntu 22.04 in ap-south-1)"
  default     = "ami-01a00762f46d584a1"  # You'll update this with real AMI
}

variable "vpc_id" {
  type = string
  description = "vpc id"
}