output "ecs_cluster_id" {
  description = "The ID of the ECS cluster"
  value       = aws_ecs_cluster.main.id
}

output "ecs_service_name" {
  description = "The name of the ECS service"
  value       = aws_ecs_service.main.name
}

output "ecs_sg_id" {
  description = "Security group ID for ECS tasks"
  value       = aws_security_group.ecs.id
}

