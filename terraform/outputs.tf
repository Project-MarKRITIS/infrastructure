output "server_ipv4" {
  value = hcloud_server.main.ipv4_address
}

output "server_ipv6" {
  value = hcloud_server.main.ipv6_address
}

output "tailscale_master_hostname" {
  value = var.TAILSCALE_MASTER_HOSTNAME
}