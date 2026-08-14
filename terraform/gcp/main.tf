provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_compute_network" "nexus" {
  name                    = var.name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "nexus" {
  name          = "${var.name}-subnet"
  ip_cidr_range = var.cidr
  region        = var.region
  network       = google_compute_network.nexus.id
}
