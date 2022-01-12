resource "aws_db_instance" "ziyotek_devops_db" {
  allocated_storage      = var.db_allocated_storage
  engine                 = var.db_engine
  engine_version         = var.db_engine_version
  instance_class         = var.db_instance_class
  name                   = var.db_name
  username               = var.db_username
  password               = var.db_password
  skip_final_snapshot    = var.db_skip_final_snapshot
  db_subnet_group_name   = var.db_subnet_group_name
  vpc_security_group_ids = var.db_vpc_security_group_ids
}

resource "aws_db_subnet_group" "ziyotek_db_sg" {
  name       = var.db_sg_name
  subnet_ids = var.db_sg_subnet_ids
}