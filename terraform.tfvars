# project settings #

resource_tags = {
  environment = "uat"
  unit        = "beanfun"
}

# project default subnet, first subnet in whole large subnet area #
default_cidr = "10.1.1.0/24"

# allow connection ip from office and openvpn #
allow_ips = [
  {
    name  = "gamania-family-001",
    value = "61.216.131.111"
  },
  {
    name  = "gamania-family-002"
    value = "61.216.130.27"
  },
  {
    name  = "beanfun-openvpn-001"
    value = "40.81.185.172"
  }
]

# allow connection ip address from gamania #
gamania_ips = [
  {
    name  = "gamania-gmobile"
    value = "59.120.33.134"
  },
  {
    name  = "gamania-gamaguest"
    value = "61.216.89.230"
  }
]

app_engine_region = "us-west1"

# gke begin #

gitlab_runner_ips = [
  # FIXEME Remove after gitlab migration
  {
    name  = "gitlab-runner-pilot"
    value = "35.197.13.60"
  },
  {
    name  = "gitlab-runner-pilot-20210909"
    value = "34.82.27.168"
  },
  {
    name  = "gitlab-runner-pilot-20210913"
    value = "35.233.223.52"
  },
  {
    name  = "gitlab-runner-pilot-20210923"
    value = "35.199.170.232"
  },
  {
    name  = "gitlab-runner-pilot-20210924"
    value = "34.105.22.224"
  },
  {
    name  = "azure-aks-link-gcp-001"
    value = "20.210.32.84"
  }
]

gke_cidrs = {
  gke_or_dataplane     = "10.6.132.0/24"
  gke_or_controllplane = "10.6.136.0/28"
  gke_or_pod           = "10.6.0.0/18"
  gke_or_svc           = "10.6.128.0/24"
  gke_or_glb           = "10.6.140.0/24"

  gke_tw_dataplane     = "10.4.132.0/24"
  gke_tw_controllplane = "10.4.136.0/28"
  gke_tw_pod           = "10.4.0.0/18"
  gke_tw_svc           = "10.4.128.0/24"
  gke_tw_glb           = "10.4.140.0/24"
}

gke_cidrs-settings = {
  or = {
    gke_dataplane     = "10.6.132.0/24"
    gke_controllplane = "10.6.136.0/28"
    gke_pod           = "10.6.0.0/18"
    gke_svc           = "10.6.128.0/24"
    gke_glb           = "10.6.140.0/24"
  }
}

node_pool-autoscaling = {
  or = {
    default-node-pool = {
      min_node_count = 1
      max_node_count = 3
    }
    large-node-pool = {
      min_node_count = 1
      max_node_count = 3
    }
  }
  tw = {
    default-node-pool = {
      min_node_count = 1
      max_node_count = 3
    }
  }
}

node_pool-settings = {
  or = {
    general-purpose-001 = {
      machine_type   = "n2-standard-2"
      preemptible    = false
      image_type     = "COS_CONTAINERD"
      node_locations = ["us-west1-b"]
      autoscaling    = { min_node_count = 1, max_node_count = 2 }
    }
  }
}

# gke end #

# cassandra begin #

cassandra_settings = {
  or = {
    name         = "cassandra-or"
    snet_name    = "snet-cassandra-or"
    cidr         = "10.26.64.0/24"
    region       = "us-west1"

    machine_type = "n2-standard-2"
    disk_image   = "ubuntu-os-cloud/ubuntu-2004-lts"
    disk_size    = 256

    vm_tag       = "cassandra-or"
  }
}

# cassandra end #

# project specified settings #

# TBD #
