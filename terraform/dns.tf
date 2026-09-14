data "hcloud_zone" "main" {
    id = var.DOMAIN_ID
}

resource "hcloud_dns_record" "wildcard" {
  zone_id = data.hcloud_zone.main.id
  name    = "*"
  type    = "A"
  value   = hcloud_server.main.ipv4_address
  ttl     = 300
}

resource "hcloud_dns_record" "root" {
  zone_id = data.hcloud_zone.main.id
  name    = "@"
  type    = "A"
  value   = hcloud_server.main.ipv4_address
  ttl     = 300
}