# terraform.tfvars

aws_region            = "ap-south-1"
environment_name      = "prod"
vpc_cidr              = "10.0.0.0/16"
public_subnet_cidr    = "10.0.1.0/24"
private_subnet_cidr   = "10.0.2.0/24"
instance_type         = "t3.micro"
instance_name         = "tl-prod-server"
ami_id                = "ami-01a00762f46d584a1"