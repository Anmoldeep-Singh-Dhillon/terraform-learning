# main.tf

# VPC Module
module "vpc" {
  source = "../../modules/vpc"

  vpc_cidr             = var.vpc_cidr
  public_subnet_cidr   = var.public_subnet_cidr
  private_subnet_cidr  = var.private_subnet_cidr
  environment_name     = var.environment_name
  aws_region           = var.aws_region
}

# Security Group Module
module "security_group" {
  source = "../../modules/security_group"

  vpc_id           = module.vpc.vpc_id
  environment_name = var.environment_name
}

# EC2 Module
module "ec2" {
  source = "../../modules/ec2"

  environment_name    = var.environment_name
  instance_name       = var.instance_name
  instance_type       = var.instance_type
  ami_id              = var.ami_id
  security_group_id   = module.security_group.security_group_id
  subnet_id           = module.vpc.public_subnet_id
}