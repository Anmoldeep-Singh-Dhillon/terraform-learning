# main.tf

module "ec2" {
  source = "../../modules/ec2"
  
  # Pass variables from environment to module
  instance_type = var.instance_type
  instance_name = var.instance_name
  ami_id        = var.ami_id
  vpc_id        = var.vpc_id
}