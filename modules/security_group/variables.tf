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

variable "ingress_rules" {
  type = map(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_ipv4   = string
  }))
  description = "Ingress rules for security group"
}