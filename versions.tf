terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.58.0"
    }
  }

  backend "gcs" {
    bucket = "bf-beanfun-uat-terraform-state"
    prefix = "terraform/state"
  }

  required_version = "~> 1.1.0"
}

provider "google" {
  project = "bf-beanfun-uat"
  region  = "us-west1"
  zone    = "us-west1-a"
}

provider "google-beta" {
  project = "bf-beanfun-uat"
  region  = "us-west1"
  zone    = "us-west1-a"
}
