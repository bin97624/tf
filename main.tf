module "data" {
  source       = "./modules/project/bf-azure-uat"
  gke_cidrs    = var.gke_cidrs
  allow_ips    = var.allow_ips

  default_cidr = var.default_cidr

#  or-node-pools = {
#    general-purpose-001 = {
#      machine_type   = "n2-standard-2"
#      preemptible    = false
#      image_type     = "COS_CONTAINERD"
#      node_locations = ["us-west1-b"]
#      autoscaling    = { min_node_count = 1, max_node_count = 2 }
#    }
#  }
}
