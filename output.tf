output "nfs_nodes" {
    value = [for droplet in digitalocean_droplet.nfs: format("${droplet.name} ansible_host=${droplet.ipv4_address}")]
}

output "nfs_domain" {
    value = var.nfs_domain
}

output "nfs_path" {
    value = var.nfs_path
}