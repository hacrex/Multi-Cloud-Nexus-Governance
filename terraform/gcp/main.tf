resource "google_compute_network" "vpc_network" {
  name                    = "nexus-vpc-gcp"
  auto_create_subnetworks = false
}
