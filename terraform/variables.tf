variable "HCLOUD_TOKEN" {
  type = string
  sensitive = true
}

variable "DOMAIN_ID" {
  type = string
  sensitive = true
}

variable "TAILSCALE_AUTH_KEY_MASTER" {
  type = string
  sensitive = true
}

variable "tailscale_auth_key_master" {
  type      = string
  sensitive = true
}