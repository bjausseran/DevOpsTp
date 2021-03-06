provider "aws" {
  region     = var.region
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  

  owners = ["099720109477"] # Canonical
}


resource "aws_instance" "instance_jenkins_server_jausseran" {
  count         = var.create_instance ? var.instance_number : 1
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Name = var.instance_name
  }
}

resource "aws_security_group" "security_group_ssh_jausseran" {
  name		  = var.security_group_ssh_name
  description = "jenkins security groups"
  vpc_id      = var.vpc_id

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.security_group_ssh_name
  }
}
resource "aws_security_group" "security_group_jenkins_jausseran" {
  name		  = var.security_group_jenkins_name
  description = "jenkins security groups"
  vpc_id      = var.vpc_id

  ingress {
    description = "web"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.security_group_jenkins_name
  }
}
resource "aws_security_group" "security_group_web_jausseran" {
  name		  = var.security_group_web_name
  description = "jenkins security groups"
  vpc_id      = var.vpc_id

  ingress {
    description = "jenkins"
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
    Name = var.security_group_web_name
  }
}