provider "google" {
  project = var.project_id
  region = var.gcp_location
}

module "network" {
  source  = "terraform-google-modules/network/google"
  version = "9.1.0"
  # insert the 3 required variables here
  project_id = var.project_id
  network_name = var.network_name
  subnets = [        {
            subnet_name           = "${var.network_name}-tw1"
            subnet_ip             = "10.10.16.0/20"
            subnet_region         = "asia-east1"
        }]
}