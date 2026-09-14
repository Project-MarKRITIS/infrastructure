data "hcloud_zone" "main" {
    id = var.DOMAIN_ID
}

resource "hcloud_zone_rrset" "wildcard" {
    zone = data.hcloud_zone.main.name
    name = "*"
    type = "A"
    ttl = 300
    records = [{
        value = hcloud_server.main.ipv4_address
    }]
}

resource "hcloud_zone_rrset" "root" {
    zone = data.hcloud_zone.main.name
    name = "@"
    type = "A"
    ttl = 300
    records = [{
        value = hcloud_server.main.ipv4_address
    }]
}