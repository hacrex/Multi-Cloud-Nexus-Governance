resource "oci_core_vcn" "vcn" {
  cidr_block     = "10.3.0.0/16"
  compartment_id = var.compartment_id
  display_name   = "nexus-vcn-oci"
}
