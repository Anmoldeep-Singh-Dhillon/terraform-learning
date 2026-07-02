# outputs.tf

output "instance_id" {
  value       = aws_instance.app.id
  description = "EC2 instance ID"
}

output "instance_public_ip" {
  value       = aws_instance.app.public_ip
  description = "Public IP"
}

output "instance_private_ip" {
  value       = aws_instance.app.private_ip
  description = "Private IP"
}