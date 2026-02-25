terraform {
  backend "gcs" {
    bucket = "kkato-tfstate"
    prefix = "{{.Target}}"
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
