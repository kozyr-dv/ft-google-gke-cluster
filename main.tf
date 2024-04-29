terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 3.5"
    }
  }

  backend "gcs" {
    bucket = "kdv-secret"
    prefix = "terraform/state"
  }
}

provider "google" {
  credentials = jsondecode(base64decode(var.GOOGLE_CREDENTIALS_JSON))
  project     = var.GOOGLE_PROJECT
  region      = var.GOOGLE_REGION
}

module "gke_cluster" {
  source         = "github.com/kozyr-dv/tf-google-gke-cluster"
  GOOGLE_REGION  = var.GOOGLE_REGION
  GOOGLE_PROJECT = var.GOOGLE_PROJECT
  GKE_NUM_NODES  = var.GKE_NUM_NODES
}
