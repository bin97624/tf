module "data" {
  source            = "./modules/project/bf-beanfun-uat"

  resource_tags     = var.resource_tags
  allow_ips         = var.allow_ips
  app_engine_region = var.app_engine_region

  default_cidr      = var.default_cidr

  # gke begin #

  gitlab_runner_ips     = var.gitlab_runner_ips
  gke_cidrs-settings    = var.gke_cidrs-settings
  node_pool-autoscaling = var.node_pool-autoscaling
  node_pool-settings    = var.node_pool-settings

  # gke end #

  cassandra_settings = var.cassandra_settings
  mongodb_settings   = var.mongodb_settings
}
