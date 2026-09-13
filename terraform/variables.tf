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

variable "TAILSCALE_MASTER_HOSTNAME" {
  type = string
  sensitive = true
}