# security-group.tf

resource "aws_security_group" "app" {
  name_prefix = "terraform-sg-"
  description = "Security group for EC2 instance"
  vpc_id      = var.vpc_id

  tags = {
    Name = var.instance_name
  }
}

# Ingress rule: Allow SSH (port 22) from anywhere
resource "aws_vpc_security_group_ingress_rule" "allow_ssh" {
  security_group_id = aws_security_group.app.id

  from_port   = 22
  to_port     = 22
  ip_protocol = "tcp"
  cidr_ipv4   = "0.0.0.0/0"  # WARNING: Open to world (only for learning!)

  tags = {
    Name = "allow-ssh"
  }
}

# Ingress rule: Allow HTTP (port 80) from anywhere
resource "aws_vpc_security_group_ingress_rule" "allow_http" {
  security_group_id = aws_security_group.app.id

  from_port   = 80
  to_port     = 80
  ip_protocol = "tcp"
  cidr_ipv4   = "0.0.0.0/0"

  tags = {
    Name = "allow-http"
  }
}

# Ingress rule: Allow HTTPS (port 443) from anywhere
resource "aws_vpc_security_group_ingress_rule" "allow_https" {
  security_group_id = aws_security_group.app.id

  from_port   = 443
  to_port     = 443
  ip_protocol = "tcp"
  cidr_ipv4   = "0.0.0.0/0"

  tags = {
    Name = "allow-https"
  }
}

# Egress rule: Allow all outbound traffic
resource "aws_vpc_security_group_egress_rule" "allow_all_outbound" {
  security_group_id = aws_security_group.app.id

  from_port   = -1
  to_port     = -1
  ip_protocol = "-1"  # -1 means all protocols
  cidr_ipv4   = "0.0.0.0/0"

  tags = {
    Name = "allow-all-outbound"
  }
}
