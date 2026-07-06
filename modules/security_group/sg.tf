# sg.tf

resource "aws_security_group" "app_sg" {
  name_prefix = "${var.environment_name}-app-"
  description = "Security group for ${var.environment_name} environment"
  vpc_id      = var.vpc_id

  tags = {
    Name = "${var.environment_name}-app-sg"
  }
}

# Ingress rules - using for_each LOOP
resource "aws_vpc_security_group_ingress_rule" "app" {
  for_each = var.ingress_rules

  security_group_id = aws_security_group.app_sg.id

  from_port   = each.value.from_port
  to_port     = each.value.to_port
  ip_protocol = each.value.protocol
  cidr_ipv4   = each.value.cidr_ipv4

  tags = {
    Name = "allow-${each.key}"
  }
}


# Egress: All outbound
resource "aws_vpc_security_group_egress_rule" "all_outbound" {
  security_group_id = aws_security_group.app_sg.id

  from_port   = -1
  to_port     = -1
  ip_protocol = "-1"
  cidr_ipv4   = "0.0.0.0/0"

  tags = {
    Name = "allow-all-outbound"
  }
}

# # Ingress: SSH
# resource "aws_vpc_security_group_ingress_rule" "ssh" {
#   security_group_id = aws_security_group.app_sg.id

#   from_port   = 22
#   to_port     = 22
#   ip_protocol = "tcp"
#   cidr_ipv4   = var.allowed_ssh_cidr

#   tags = {
#     Name = "allow-ssh"
#   }
# }

# # Ingress: HTTP
# resource "aws_vpc_security_group_ingress_rule" "http" {
#   security_group_id = aws_security_group.app_sg.id

#   from_port   = 80
#   to_port     = 80
#   ip_protocol = "tcp"
#   cidr_ipv4   = "0.0.0.0/0"

#   tags = {
#     Name = "allow-http"
#   }
# }

# # Ingress: HTTPS
# resource "aws_vpc_security_group_ingress_rule" "https" {
#   security_group_id = aws_security_group.app_sg.id

#   from_port   = 443
#   to_port     = 443
#   ip_protocol = "tcp"
#   cidr_ipv4   = "0.0.0.0/0"

#   tags = {
#     Name = "allow-https"
#   }
# }

