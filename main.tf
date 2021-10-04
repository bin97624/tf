module "data" {
  source        = "./modules/project/bf-beanfun-uat"

  resource_tags = var.resource_tags
  allow_ips     = var.allow_ips

  default_cidr  = var.default_cidr

  # gke begin #

  gitlab_runner_ips     = var.gitlab_runner_ips
  gke_cidrs             = var.gke_cidrs
  node_pool-autoscaling = var.node_pool-autoscaling

  tw-node-pools         = {
    general-purpose-001 = {
      machine_type   = "n2-standard-2"
      preemptible    = false
      image_type     = "COS_CONTAINERD"
      node_locations = ["asia-east1-a", "asia-east1-b", "asia-east1-c"]
      autoscaling    = { min_node_count = 1, max_node_count = 2 }
    }
  }

  or-node-pools         = {
    general-purpose-001 = {
      machine_type   = "n2-standard-2"
      preemptible    = false
      image_type     = "COS_CONTAINERD"
      node_locations = ["us-west1-b"]
      autoscaling    = { min_node_count = 1, max_node_count = 2 }
    }
  }

  # gke end #
}
