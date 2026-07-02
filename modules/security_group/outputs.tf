# outputs.tf

output "security_group_id" {
  value       = aws_security_group.app_sg.id
  description = "Security group ID"
}

output "security_group_name" {
  value       = aws_security_group.app_sg.name
  description = "Security group name"
}