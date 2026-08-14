variable "aws_region" {
  type = string
}

variable "name" {
  type    = string
  default = "nexus-aws"
}

variable "cidr" {
  type    = string
  default = "10.1.0.0/16"
}

variable "availability_zones" {
  type = list(string)
}

variable "common_tags" {
  type    = map(string)
  default = {}
}
