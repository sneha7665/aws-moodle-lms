# ==================================

# AWS Moodle LMS Infrastructure

# ==================================

resource "aws_security_group" "moodle_sg" {
name        = "moodle-security-group"
description = "Security Group for Moodle LMS"

ingress {
from_port   = 80
to_port     = 80
protocol    = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}

ingress {
from_port   = 443
to_port     = 443
protocol    = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}

ingress {
from_port   = 22
to_port     = 22
protocol    = "tcp"

```
# Replace with your IP later
cidr_blocks = ["0.0.0.0/0"]
```

}

egress {
from_port   = 0
to_port     = 0
protocol    = "-1"
cidr_blocks = ["0.0.0.0/0"]
}
}

# ==================================

# EC2 Instance

# ==================================

resource "aws_instance" "moodle_server" {

ami           = "ami-xxxxxxxx"
instance_type = var.instance_type

tags = {
Name = "AWS-Moodle-LMS"
}

vpc_security_group_ids = [
aws_security_group.moodle_sg.id
]
}

# ==================================

# RDS MySQL

# ==================================

resource "aws_db_instance" "moodle_db" {

identifier           = "moodle-db"
engine               = "mysql"
engine_version       = "8.0"

instance_class       = var.db_instance_class

allocated_storage    = 20

username             = "admin"
password             = "CHANGE-ME"

skip_final_snapshot  = true

publicly_accessible  = false
}
