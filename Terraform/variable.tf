variable "bucket" {
  type = string
  description = "Terraform state bucket"
  default = "ec2_terraform"
}

variable "path" {
  type = string
  description = "Terraform state path"
  default = "prod"
}

variable "instance_name" {
  type = string
  description = "Instance name"
  default = "instance_jenkins_server_jausseran"
}
variable "vpc_id" {
  type = string
  description = "vpc id"
  default = "vpc-891839e0"
}

variable "region" {
  type = string
  description = "AWS region"
  default = "eu-west-3"
}

variable "instance_type" {
  type = string
  description = "Instance type"
  default = "t2.micro"
}

variable "instance_number" {
  type = number
  description = "Instance number"
  default = 1
}

variable "create_instance" {
  type = bool
  description = "Create instance or not"
  default = true
}
variable "security_group_name" {
  type = string
  description = "Security group use for Jenkins"
  default = "security_groups_jausseran"
}

variable "key_name" {
  type = string
  description = "Private Key to pair"
  default = "tp_dev_ynov"
}

