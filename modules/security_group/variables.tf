# variables.tf

variable "vpc_id" {
  type        = string
  description = "VPC ID where security group will be created"
}

variable "environment_name" {
  type        = string
  description = "Environment name (dev/staging/prod)"
}

variable "allowed_ssh_cidr" {
  type        = string
  description = "CIDR block allowed for SSH"
  default     = "0.0.0.0/0"  # WARNING: Open to world for learning
}