variable "region" {
  description = "AWS Region"
  type        = string
  default     = "ap-south-1"
}

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
#variable "subnet_ids" {
#description = "Subnets for ECS tasks"
#type        = list(string)
#}
#variable "ecs_sg_id" {
# description = "Security group ID for ECS tasks"
# type        = string
#}
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}
variable "public_subnets" {
  description = "List of public subnet CIDRs"
  type        = list(string)
}
variable "private_subnets" {
  description = "List of private subnet CIDRs"
  type        = list(string)
}
variable "db_identifier" {
  description = "RDS database identifier"
  type        = string
}
variable "db_engine" {
  description = "RDS database engine"
  type        = string
}
variable "db_instance_class" {
  description = "RDS instance class"
  type        = string
}
variable "db_storage" {
  description = "RDS allocated storage in GB"
  type        = number
}
variable "db_username" {
  description = "RDS master username"
  type        = string
}
variable "db_password" {
  description = "RDS master password"
  type        = string
  sensitive   = true
}
variable "backup_retention" {
  description = "RDS backup retention period in days"
  type        = number
}
variable "deletion_protection" {
  description = "RDS deletion protection"
  type        = bool
}

variable "azs" {
  description = "List of availability zones"
  type        = list(string)
}

variable "skip_final_snapshot" {
  description = "Skip creating a final snapshot when destroying the DB"
  type        = bool
  default     = true
}

variable "final_snapshot_identifier" {
  description = "Name for the final snapshot if skip_final_snapshot is false"
  type        = string
  default     = null
}
