variable "project_id" {
  default     = "project_id"
  description = "project id"
}

variable "region" {
  default     = "us-east1"
  description = "region"
}

variable "cluster_name" {
  default     = "gke-cluster"
  description = "cluster name"
}

variable "gke_num_nodes" {
  default     = 1
  description = "number of nodes per zone"
}

variable "machine_type" {
    default     = "e2-standard-4"
    description = "node machine type"
}