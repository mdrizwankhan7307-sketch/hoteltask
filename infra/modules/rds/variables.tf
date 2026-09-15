variable "db_identifier" {
  description = "Identifier for the RDS instance"
  type        = string
}

variable "db_engine" {
  description = "Database engine (postgres or mysql)"
  type        = string
}

variable "db_instance_class" {
  description = "Instance type for RDS"
  type        = string
}

variable "db_storage" {
  description = "Allocated storage in GB"
  type        = number
}

variable "db_username" {
  description = "Master username for RDS"
  type        = string
}

variable "db_password" {
  description = "Master password for RDS"
  type        = string
  sensitive   = true
}

variable "backup_retention" {
  description = "Number of days to retain backups"
  type        = number
}

variable "deletion_protection" {
  description = "Enable deletion protection"
  type        = bool
}

variable "ecs_sg_id" {
  description = "Security group ID of ECS tasks allowed to access RDS"
  type        = string
}

variable "subnet_ids" {
  description = "Private subnet IDs for RDS"
  type        = list(string)
}


variable "vpc_id" {
  description = "VPC ID for ECS tasks"
  type        = string
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

