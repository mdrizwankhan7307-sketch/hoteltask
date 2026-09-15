db_instance_class   = "db.t3.micro"
backup_retention    = 1
deletion_protection = false


vpc_cidr        = "10.1.0.0/16"
public_subnets  = ["10.1.1.0/24", "10.1.2.0/24"]
private_subnets = ["10.1.3.0/24", "10.1.4.0/24"]

cluster_name    = "prod-cluster"
cpu             = "512"
memory          = "1024"
container_image = "nginx:latest"

db_identifier = "prod-db"
db_engine     = "postgres"
db_storage    = 50
db_username   = "mdrizkha"
db_password   = "securepassword"
azs           = ["ap-south-1a", "ap-south-1b"]

skip_final_snapshot       = false
final_snapshot_identifier = "prod-db-final-snapshot"


