variable "location" {
  type    = string
  default = "eastus"
}

variable "resource_group_name" {
  type    = string
  default = "nexus-rg"
}

variable "vnet_name" {
  type    = string
  default = "nexus-vnet"
}

variable "cidr" {
  type    = string
  default = "10.3.0.0/16"
}
