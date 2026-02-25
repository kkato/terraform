terraform {
  backend "gcs" {
    bucket = "kkato-tfstate"
    prefix = "k8s"
  }
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "google" {
  project = "kkato-app"
}
