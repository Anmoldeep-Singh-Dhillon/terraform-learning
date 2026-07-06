# terraform.tfvars

aws_region            = "ap-south-1"
environment_name      = "dev"
vpc_cidr              = "10.0.0.0/16"
public_subnet_cidr    = "10.0.1.0/24"
private_subnet_cidr   = "10.0.2.0/24"
instance_type         = "t3.micro"
instance_name         = "tl-dev-server"
ami_id                = "ami-01a00762f46d584a1"
ingress_rules = {
  "ssh" = {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_ipv4   = "0.0.0.0/0"
  }
  "http" = {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_ipv4   = "0.0.0.0/0"
  }
  "https" = {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_ipv4   = "0.0.0.0/0"
  }
}