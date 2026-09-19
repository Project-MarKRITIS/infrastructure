resource "hcloud_volume" "data" {
  name      = "k3s-data"
  size      = 20
  location  = "fsn1"
  format    = "ext4"
}

resource "hcloud_volume_attachment" "data" {
  volume_id = hcloud_volume.data.id
  server_id = hcloud_server.main.id
  automount = false
}
