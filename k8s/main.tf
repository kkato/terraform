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
  project = "active-chimera-351913"
}

import {
  id = "projects/active-chimera-351913/secrets/cloudflare-account-id"
  to = google_secret_manager_secret.cloudflare_account_id
}

import {
  id = "projects/active-chimera-351913/secrets/cloudflare-api-token"
  to = google_secret_manager_secret.cloudflare_api_token
}

import {
  id = "projects/active-chimera-351913/secrets/cloudflare-tunnel-name"
  to = google_secret_manager_secret.cloudflare_tunnel_name
}

resource "google_secret_manager_secret" "cloudflare_account_id" {
  secret_id = "cloudflare-account-id"

  replication {
    auto {}
  }
}

resource "google_secret_manager_secret" "cloudflare_api_token" {
  secret_id = "cloudflare-api-token"

  replication {
    auto {}
  }
}

resource "google_secret_manager_secret" "cloudflare_tunnel_name" {
  secret_id = "cloudflare-tunnel-name"

  replication {
    auto {}
  }
}
