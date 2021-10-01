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

# gke begin #

variable "gitlab_runner_ips" {
  type = list(
    object({
      name  = string
      value = string
    })
  )
}

variable "gke_cidrs" {
  type = map(string)
}

variable "node_pool-autoscaling" {
  type = map(map(object({
    min_node_count = number
    max_node_count = number
  })))
}

# gke end #

# project specified variables #

# TBD #
