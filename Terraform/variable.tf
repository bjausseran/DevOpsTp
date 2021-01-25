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


variable "key_pair" {
  type = string
  description = "Private Key to pair"
  default = "-----BEGIN RSA PRIVATE KEY-----MIIEpAIBAAKCAQEAoQ+BseSGhdcumbdhcZD2vtq9NPqsgOGiUt+mmAhYCAn/oGS0hnQas/nTz8FThGLPts+b6ycZEhOKGYT+aBnXtRH8huwt/2lTu5EzgKBv7p+tPgy2QYiY0Cu3VfR95i3kfXXDB2bIbTiR3bmWdexBsyQXsHbnIEHKzzV/wAmdmHNNUkcGklvixJb3Vr57Slww04PxgYqnJUd4UERjZO90ikXBOi50+lkwUnGZVGP0G23xJoXDaKaZ91swTXrWxQkPb9Lxelk3g6vkwlrICv5OUubyXKltDqV9OOwYtHtBMpdiUHJRhsMMIKAJ5vzWnKE8UOTodScELloUCR3nZtppOwIDAQABAoIBAG1dsD3x5f8ATV6IDZ0mSMb0lcJh7b1eefE4eVGHaO+cin6Jo6QhNvi7Tj8nEeU1i8KhW0jktbt2lTIbAv4Bfl4wJoAf5GQpS3h0crqHNzqcJvGZhDEf5lSFOusdKFijFSK0Uoi2HKc94J7lJOxST5KrkYJ8WxmmU2c89tCaNu+LUj2NPgwZGCHWFtEH98ukhFA52Gk6/CSLPrUbooiYkQgGzQNOPbIBR7qkSg7KcLTfKvntLBP8jcKBcc0l3k2z8BMk/PoxkuepPoH0uk20SvzUX2qZjvjCQTspSsF+Gkz4qEWu9DFUq1fISMC3LXS4ZY5KPh2yTLUtQtDIJd4OYzECgYEA+m0rLhaNVyv10DDkj6H53mo/6G76OagI5DM17/BsMm+/OQNXSCdtIkXE6lD/s03QLPKpfUkXtnohgw4PAorRLJv+p2g23jAxadSC0HX2dKDDVFL8+0abomFZ7Js64SS6zWyZwEBu1KBIIufn8R0V8qSpDcrW3CRjZSL/k8vYdWcCgYEApKUqmPTMpUggharVjitnATcmDKrcVJhL5O9PaS4Dv9P0RfSq3+wiuojQgapZzEKucCyuLzixc4+65nh/+kQH4GTGodA9xVE+3w0SpzR86SnsI2kr/hKhaV7hJMzFqboEui0UlCwgfGoPZOQXT8KKBUhTHXnLMItQzX2fo+MNFQ0CgYB6EAwkAsoR21ONjsdZW1I3nwJXgQBmagkrceqwcTfLvbwvRfmdKdqAAhHhRGneM+dsgTsr3hy4zP7YqlmWm6MpYz/UyW81DbiIJRU+FsFyR4nt6CV3NQtXMqxqL5+bbhO/XVfz5XQgH6AJo4/ibpLsGmZsWpov42yvN0fr+kgfsQKBgQCNarx64pFASgJ9LS3+zjLMLXVGHh/fnWxauF5qBjb8Nm6zA6MdcHKn68nEBfDZbFDuUsJOFxD8JHExckDiUjq9t3GRHQ9hgxZQeacS7Rd5IiQMilJaCeCQZAlYFXaWAQv8aaoqVviURHjyfKO1Q3BPdz7Eq48mJBOEXSmYl/XtpQKBgQCkLyzmopge2pP6bGbSIex+7CcYNXuFHMys2+nNn/qoIVjpKojCUdOeoN/P07noer1iI+a6ZuGtv+WU+dETzj/u9mf2/NZIFo+Is8S17aMMqwwTtCFc/U4W2VHwgP9FUc18hRAQKusZ5A8JOYTVK/PXJKch49mD2yqa6rx2vCEBvA==-----END RSA PRIVATE KEY-----"
}
