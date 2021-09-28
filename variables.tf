# --- general variables ---

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

# --- project specified variables ---

variable "gke_cidrs" {
  type = map(string)
}
