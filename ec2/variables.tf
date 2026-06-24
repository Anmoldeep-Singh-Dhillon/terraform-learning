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