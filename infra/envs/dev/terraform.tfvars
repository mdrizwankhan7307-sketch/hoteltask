db_instance_class   = "db.t3.micro"
backup_retention    = 0
deletion_protection = false


vpc_cidr        = "10.0.0.0/16"
public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnets = ["10.0.3.0/24", "10.0.4.0/24"]

cluster_name    = "dev-cluster"
cpu             = "256"
memory          = "512"
container_image = "nginx:latest"

db_identifier = "dev-db"
db_engine     = "postgres"
db_storage    = 20
db_username   = "mdrizkha2"
db_password   = "password123"
azs           = ["ap-south-1a", "ap-south-1b"]

skip_final_snapshot       = true
final_snapshot_identifier = null
