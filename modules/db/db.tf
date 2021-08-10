resource "aws_db_instance" "postgres_rds" {
  identifier             = "three-tier-architecture-rds-${var.env}"
  storage_type           = "${var.storage_type}"
  engine                 = "${var.engine}"
  engine_version         = "${var.engine_verion}"
  name                   = "mydb-${var.env}"
  db_subnet_group_name   = "${aws_db_subnet_group.default.id}"
  vpc_security_group_ids = ["${var.db_security_group}"]
  instance_class         = "${var.instance_class}"
  multi_az               = "${var.multi_az}"
  allocated_storage      = "${var.allocated_storage}"
  username               = "${var.username}"
  password               = "${var.password}"
  skip_final_snapshot    = "${var.skip_final_snapshot}"
}

resource "aws_db_subnet_group" "default" {
  subnet_ids = ["${var.db_subnet_b}", "${var.db_subnet_c}"]
}
