# variables.tf

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for VPC"
}

variable "public_subnet_cidr" {
  type        = string
  description = "CIDR block for public subnet"
}

variable "private_subnet_cidr" {
  type        = string
  description = "CIDR block for private subnet"
}

variable "environment_name" {
  type        = string
  description = "Environment name (dev/staging/prod)"
}

variable "aws_region" {
  type        = string
  description = "AWS region"
}