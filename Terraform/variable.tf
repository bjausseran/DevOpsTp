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
  default = "instance_jenkins_master"
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
  default = "security_group_jenkins"
}

variable "key_pair" {
  type = string
  description = "Private Key to pair"
  default = "-----BEGIN RSA PRIVATE KEY-----
MIIEpAIBAAKCAQEAoQ+BseSGhdcumbdhcZD2vtq9NPqsgOGiUt+mmAhYCAn/oGS0
hnQas/nTz8FThGLPts+b6ycZEhOKGYT+aBnXtRH8huwt/2lTu5EzgKBv7p+tPgy2
QYiY0Cu3VfR95i3kfXXDB2bIbTiR3bmWdexBsyQXsHbnIEHKzzV/wAmdmHNNUkcG
klvixJb3Vr57Slww04PxgYqnJUd4UERjZO90ikXBOi50+lkwUnGZVGP0G23xJoXD
aKaZ91swTXrWxQkPb9Lxelk3g6vkwlrICv5OUubyXKltDqV9OOwYtHtBMpdiUHJR
hsMMIKAJ5vzWnKE8UOTodScELloUCR3nZtppOwIDAQABAoIBAG1dsD3x5f8ATV6I
DZ0mSMb0lcJh7b1eefE4eVGHaO+cin6Jo6QhNvi7Tj8nEeU1i8KhW0jktbt2lTIb
Av4Bfl4wJoAf5GQpS3h0crqHNzqcJvGZhDEf5lSFOusdKFijFSK0Uoi2HKc94J7l
JOxST5KrkYJ8WxmmU2c89tCaNu+LUj2NPgwZGCHWFtEH98ukhFA52Gk6/CSLPrUb
ooiYkQgGzQNOPbIBR7qkSg7KcLTfKvntLBP8jcKBcc0l3k2z8BMk/PoxkuepPoH0
uk20SvzUX2qZjvjCQTspSsF+Gkz4qEWu9DFUq1fISMC3LXS4ZY5KPh2yTLUtQtDI
Jd4OYzECgYEA+m0rLhaNVyv10DDkj6H53mo/6G76OagI5DM17/BsMm+/OQNXSCdt
IkXE6lD/s03QLPKpfUkXtnohgw4PAorRLJv+p2g23jAxadSC0HX2dKDDVFL8+0ab
omFZ7Js64SS6zWyZwEBu1KBIIufn8R0V8qSpDcrW3CRjZSL/k8vYdWcCgYEApKUq
mPTMpUggharVjitnATcmDKrcVJhL5O9PaS4Dv9P0RfSq3+wiuojQgapZzEKucCyu
Lzixc4+65nh/+kQH4GTGodA9xVE+3w0SpzR86SnsI2kr/hKhaV7hJMzFqboEui0U
lCwgfGoPZOQXT8KKBUhTHXnLMItQzX2fo+MNFQ0CgYB6EAwkAsoR21ONjsdZW1I3
nwJXgQBmagkrceqwcTfLvbwvRfmdKdqAAhHhRGneM+dsgTsr3hy4zP7YqlmWm6Mp
Yz/UyW81DbiIJRU+FsFyR4nt6CV3NQtXMqxqL5+bbhO/XVfz5XQgH6AJo4/ibpLs
GmZsWpov42yvN0fr+kgfsQKBgQCNarx64pFASgJ9LS3+zjLMLXVGHh/fnWxauF5q
Bjb8Nm6zA6MdcHKn68nEBfDZbFDuUsJOFxD8JHExckDiUjq9t3GRHQ9hgxZQeacS
7Rd5IiQMilJaCeCQZAlYFXaWAQv8aaoqVviURHjyfKO1Q3BPdz7Eq48mJBOEXSmY
l/XtpQKBgQCkLyzmopge2pP6bGbSIex+7CcYNXuFHMys2+nNn/qoIVjpKojCUdOe
oN/P07noer1iI+a6ZuGtv+WU+dETzj/u9mf2/NZIFo+Is8S17aMMqwwTtCFc/U4W
2VHwgP9FUc18hRAQKusZ5A8JOYTVK/PXJKch49mD2yqa6rx2vCEBvA==
-----END RSA PRIVATE KEY-----"
}
