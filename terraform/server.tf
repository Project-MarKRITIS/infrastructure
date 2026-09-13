resource "hcloud_server" "main" {
  name = "main-node"
  server_type = "cx23"
  image = "ubuntu-24.04"
  location = "fsn1"
  ssh_keys = data.hcloud_ssh_keys.team.ssh_keys[*].id
  firewall_ids = [hcloud_firewall.main.id]
  network {
    network_id = hcloud_network.main.id
    ip = "10.0.1.10"
  }
  depends_on = [ hcloud_network_subnet.main ]
}