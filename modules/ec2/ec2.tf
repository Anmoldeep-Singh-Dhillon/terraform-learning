# ec2.tf

resource "aws_instance" "web" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.app.id]  # Reference security group

  tags = {
    Name = var.instance_name
  }
}