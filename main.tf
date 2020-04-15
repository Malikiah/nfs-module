resource "digitalocean_droplet" "nfs" {
    count = var.nfs_count
    name = "${count.index + 1}" > 9 ? "${var.region}-nfs-node-${count.index + 1}" : "${var.region}-nfs-node-0${count.index + 1}"
    image = var.image
    region = var.region
    size = var.nfs_size
    ssh_keys = [ 
        data.digitalocean_ssh_key.malikiah.id
    ]
    tags = [
        "nfs",
        var.image
    ]
}

resource "digitalocean_volume_attachment" "nfs-volume-sfo2-01" {
  droplet_id = digitalocean_droplet.nfs[0].id
  volume_id  = data.digitalocean_volume.nfs-volume-sfo2-01.id
}

resource "digitalocean_domain" "nfs_domain" {
  name       = var.nfs_domain
  ip_address = digitalocean_droplet.nfs[0].ipv4_address
}