migration "state" "import_secrets" {
  actions = [
    "import google_secret_manager_secret.cloudflare_account_id projects/active-chimera-351913/secrets/cloudflare-account-id",
    "import google_secret_manager_secret.cloudflare_api_token projects/active-chimera-351913/secrets/cloudflare-api-token",
    "import google_secret_manager_secret.cloudflare_tunnel_name projects/active-chimera-351913/secrets/cloudflare-tunnel-name",
  ]
}
