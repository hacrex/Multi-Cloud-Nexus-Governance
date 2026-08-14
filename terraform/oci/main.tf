provider "oci" {
  region = var.region
}

resource "oci_core_vcn" "nexus" {
  compartment_id = var.compartment_id
  display_name   = var.display_name
  cidr_block     = var.cidr
  dns_label      = "nexusoci"
}
