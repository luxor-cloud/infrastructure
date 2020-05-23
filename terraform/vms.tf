data "hcloud_ssh_key" "ssh_key" {
  fingerprint = "${var.public_key}"
}

resource "hcloud_server" "nexus" {
  name        = "repo.luxor.cloud"
  image       = "debian-9"
  server_type = "cx11"
  datacenter  = "nbg1-dc3"
  ssh_keys    = ["${data.hcloud_ssh_key.ssh_key.id}"]
  labels = {
    env = "prod"
  }
}


resource "hcloud_server" "general-nginx" {
  name        = "general-nginx"
  image       = "debian-10"
  server_type = "cx11"
  datacenter  = "nbg1-dc3"
  ssh_keys    = ["${data.hcloud_ssh_key.ssh_key.id}"]
  labels = {
    env = "prod"
  }
}
