# outputs.tf

output "instance_id" {
  value       = aws_instance.web.id
  description = "EC2 instance ID"
}

output "instance_public_ip" {
  value       = aws_instance.web.public_ip
  description = "Public IP address of EC2"
}

output "instance_private_ip" {
  value       = aws_instance.web.private_ip
  description = "Private IP address of EC2"
}

output "instance_state" {
  value       = aws_instance.web.instance_state
  description = "Current state of EC2"
}

output "security_group_id" {
  value       = aws_security_group.app.id
  description = "Security group ID"
}

output "security_group_name" {
  value       = aws_security_group.app.name
  description = "Security group name"
}