# project settings #

variable "resource_tags" {
  type = map(string)
}

variable "default_cidr" {
  type = string
}

variable "allow_ips" {
  type = list(
    object({
      name  = string
      value = string
    })
  )
}

variable "gamania_ips" {
  type = list(
    object({
      name  = string
      value = string
    })
  )
}

variable "app_engine_region" {
  type = string
}

# gke begin #

variable "gitlab_runner_ips" {
  type = list(
    object({
      name  = string
      value = string
    })
  )
}

variable "gke_cidrs-settings" {
  type = map(object({
    gke_dataplane     = string
    gke_controllplane = string
    gke_pod           = string
    gke_svc           = string
    gke_glb           = string
  }))
}

variable "node_pool-autoscaling" {
  type = map(map(object({
    min_node_count = number
    max_node_count = number
  })))
}

variable "node_pool-settings" {
  type = map(map(object({
    machine_type   = string
    preemptible    = bool
    image_type     = string
    node_locations = list(string)

    autoscaling    = object({
      min_node_count = number
      max_node_count = number
    })
  })))
}

# gke end #

# cassandra begin #

variable cassandra_settings {
  type = map(object({
    name           = string
    snet_name      = string
    cidr           = string
    region         = string
    machine_type   = string
    disk_image     = string
    disk_size      = number
    data_disk_size = number
    vm_tag         = string
  }))
}

# cassandra end #

# project specified variables #

# TBD #
