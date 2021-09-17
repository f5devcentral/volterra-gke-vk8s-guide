resource "google_compute_subnetwork" "subnet" {
  name          = "${var.project_id}-cluster-subnet"
  region        = var.region
  network       = google_compute_network.vpc.id

  ip_cidr_range = "10.0.96.0/22"

  secondary_ip_range {
    range_name    = "${var.project_id}-cluster-services-range"
    ip_cidr_range = "10.0.88.0/22"
  }

  secondary_ip_range {
    range_name    = "${var.project_id}-cluster-pod-ranges"
    ip_cidr_range = "10.0.92.0/22"
  }
}

resource "google_compute_network" "vpc" {
  name                    = "${var.project_id}-cluster-vpc"
  auto_create_subnetworks = false
}