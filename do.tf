data "digitalocean_ssh_key" "mb_key" {
  name = "mb"
}

data "digitalocean_ssh_key" "ipad_key" {
  name = "ipad"
}

resource "digitalocean_droplet" "do_dev" {
  image    = "coreos"
  name     = "dev-1"
  region   = "sgp-1"
  size     = "s-1vcpu-2gb"
  ssh_keys = [data.digitalocean_ssh_key.mb_key.id, data.digitalocean_ssh_key.ipad_key.id]
}
