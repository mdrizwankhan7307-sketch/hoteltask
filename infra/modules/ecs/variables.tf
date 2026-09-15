variable "cluster_name" {
  description = "Name of the ECS cluster"
  type        = string
}

variable "cpu" {
  description = "CPU units for ECS task"
  type        = string
}

variable "memory" {
  description = "Memory for ECS task"
  type        = string
}

variable "container_image" {
  description = "Docker image for ECS task"
  type        = string
}

variable "subnet_ids" {
  description = "Subnets for ECS tasks"
  type        = list(string)
}


variable "vpc_id" {
  description = "VPC ID for ECS tasks"
  type        = string
}

variable "alb_sg_id" {
  type = string
}