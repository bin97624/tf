# --- general settings ---

# project default subnet, first subnet in whole large subnet area
default_cidr = "10.1.1.0/24"

# allow connection ip from office and openvpn
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

# allow connection ip address from gamania
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

# --- project specified settings ---

gke_cidrs = {
  gke_or_dataplane     = "10.64.32.0/24"
  gke_or_controllplane = "10.64.34.0/28"
  gke_or_pod           = "10.64.0.0/19"
  gke_or_svc           = "10.64.33.0/24"
  gke_or_glb           = "10.128.64.0/25"
}
