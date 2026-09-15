output "db_instance_id" {
  description = "The ID of the RDS instance"
  value       = aws_db_instance.main.id
}

output "db_endpoint" {
  description = "The connection endpoint for the RDS instance"
  value       = aws_db_instance.main.endpoint
}

output "db_sg_id" {
  description = "Security group ID for RDS"
  value       = aws_security_group.rds.id
}
