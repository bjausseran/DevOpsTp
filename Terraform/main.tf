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

  resource "aws_key_pair" "my_key_pair" {
  key_name   = var.key_name
  private_key = var.key_pair
}

resource "aws_instance" "instance_jenkins_server_jausseran" {
  count         = var.create_instance ? var.instance_number : 1
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  key_name      = var.key_name
  vpc_security_group_ids = [ aws_security_group.security_group_jenkins_jausseran.id ]

  tags = {
    Name = var.instance_name
  }
}
