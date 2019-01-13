provider "template" {
  version = ">= 1.0"
}

resource "aws_db_instance" "example" {
  engine = "mysql"
  allocated_storage = 10
  instance_class = "db.t2.micro"
  name= "${var.cluster-name}"
  username = "admin"
  password = "${var.db_password}"
  publicly_accessible = true
  skip_final_snapshot = true
}
