
resource "aws_db_subnet_group" "main" {
  name       = "${var.db_identifier}-subnet-group"
  subnet_ids = var.subnet_ids

  tags = {
    Name = "${var.db_identifier}-subnet-group"
  }
}

resource "aws_db_instance" "main" {
  identifier        = var.db_identifier
  engine            = var.db_engine
  instance_class    = var.db_instance_class
  allocated_storage = var.db_storage
  username          = var.db_username
  password          = var.db_password
  db_subnet_group_name = aws_db_subnet_group.main.name
  vpc_security_group_ids = [var.ecs_sg_id]
  backup_retention_period = var.backup_retention
  deletion_protection     = var.deletion_protection
  skip_final_snapshot       = var.skip_final_snapshot
  final_snapshot_identifier = var.final_snapshot_identifier
}

resource "aws_security_group" "rds" {
  name        = "rds-sg"
  description = "Allow traffic only from ECS"
  vpc_id      = var.vpc_id

  ingress {
    description     = "Postgres from ECS"
    from_port       = 3306
    to_port         = 3306
    protocol        = "tcp"
     security_groups = [var.ecs_sg_id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

