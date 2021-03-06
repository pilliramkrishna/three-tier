env                   = "dev"

vpc_cidr              = "10.1.0.0/16"
public_subnet_b_cidr  = "10.1.1.0/24"
public_subnet_c_cidr  = "10.1.2.0/24"
private_subnet_b_cidr = "10.1.3.0/24"
private_subnet_c_cidr = "10.1.4.0/24"
db_subnet_b_cidr      = "10.1.5.0/24"
db_subnet_c_cidr      = "10.1.6.0/24"
username              = "foo"
instance_class        = "db.t2.micro"
multi_az              = "false"
allocated_storage     = "10"
skip_final_snapshot   = "true"
region                = "us-east-1"
image_id             = "ami-0a3633d3e91ac0c8c"
instance_type        = "t3.medium"
engine               = "postgres"
engine_version      = "9.6.5"
min_size             = "2"
max_size             = "10"