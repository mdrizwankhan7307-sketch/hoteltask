terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = var.region
}

# --- Network Module ---
module "network" {
  source          = "../../modules/network"
  vpc_cidr        = var.vpc_cidr
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
  region          = var.region
  azs             = var.azs
}

# --- EC2 Module ---
module "ecs" {
  source = "../../modules/ecs"

  cluster_name    = var.cluster_name
  cpu             = var.cpu
  memory          = var.memory
  container_image = var.container_image

  subnet_ids = module.network.private_subnet_ids
  vpc_id     = module.network.vpc_id
  alb_sg_id  = module.network.alb_sg_id
}

# --- RDS Module ---
module "rds" {
  source              = "../../modules/rds"
  db_identifier       = var.db_identifier
  db_engine           = var.db_engine
  db_instance_class   = var.db_instance_class
  db_storage          = var.db_storage
  db_username         = var.db_username
  db_password         = var.db_password
  backup_retention    = var.backup_retention
  deletion_protection = var.deletion_protection
  ecs_sg_id           = module.ecs.ecs_sg_id
  vpc_id              = module.network.vpc_id
  subnet_ids          = module.network.private_subnet_ids
}
