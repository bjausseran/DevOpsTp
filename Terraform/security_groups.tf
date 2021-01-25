
resource "aws_security_group" "security_group_jenkins" {
  name		  = var.security_group_name
  description = "jenkins secutrity groups"
  vpc_id      = aws_vpc.main.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
  }
  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.security_group_name
  }
}