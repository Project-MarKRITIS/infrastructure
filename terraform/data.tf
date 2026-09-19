data "hcloud_ssh_keys" "team" {
  with_selector = "role=team-access"
}
data "hcloud_ssh_keys" "ci" {
  with_selector = "role=ci"
}