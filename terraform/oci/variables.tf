variable "compartment_id" {
  type = string
}

variable "region" {
  type = string
}

variable "display_name" {
  type    = string
  default = "nexus-oci"
}

variable "cidr" {
  type    = string
  default = "10.4.0.0/16"
}
