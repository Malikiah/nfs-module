output "nfs_nodes" {
    value = [for droplet in digitalocean_droplet.nfs: format("${droplet.name} ansible_host=${droplet.ipv4_address}")]
}