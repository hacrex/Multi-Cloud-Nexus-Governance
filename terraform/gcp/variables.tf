variable "project_id" {
  type = string
}

variable "region" {
  type = string
}

variable "name" {
  type    = string
  default = "nexus-gcp"
}

variable "cidr" {
  type    = string
  default = "10.2.0.0/16"
}
