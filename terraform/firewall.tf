resource "hcloud_firewall" "main" {
  name = "main-firewall"

  rule {
    description = "HTTP traffic"
    direction = "in"
    protocol = "tcp"
    port = "80"
    source_ips = ["0.0.0.0/0", "::/0"]
  }

  rule {
    description = "HTTPS traffic"
    direction = "in"
    protocol = "tcp"
    port = "443"
    source_ips = ["0.0.0.0/0", "::/0"]
  }
}