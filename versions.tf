terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.58.0"
    }
  }

  backend "gcs" {
    bucket = "bf-azure-uat-terraform-state"
    prefix = "terraform/state"
  }

  required_version = "~> 1.0.0"
}

provider "google" {
  project = "bf-azure-uat"
  region  = "asia-east1"
  zone    = "asia-east1-a"
}

provider "google-beta" {
  project = "bf-azure-uat"
  region  = "asia-east1"
  zone    = "asia-east1-a"
}
