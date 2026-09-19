output "server_ipv4" {
  value = hcloud_server.main.ipv4_address
}

output "server_ipv6" {
  value = hcloud_server.main.ipv6_address
}

output "tailscale_master_hostname" {
  value = var.TAILSCALE_MASTER_HOSTNAME
}

output "data_volume_id" {
  value = hcloud_volume.data.id
}

output "data_volume_device" {
  value = hcloud_volume.data.linux_device
}