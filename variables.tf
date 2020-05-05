// NFS Variables \\
variable "nfs_count" {
    description = ""
    default = 0
}

variable "nfs_size" {
    default = "s-2vcpu-4gb"
}

variable "nfs_domain" {
  description = ""
  default = ""
}

variable "nfs_volume" {
  description = ""
  default = ""
}

variable "nfs_path" {
  description = ""
  default = "/data/nfs4" 
}



// DigitalOcean Variables \\

variable "image" {
    default = "centos-8-x64"
}

variable "region" {
    default = "sfo2"
}

// Linux Variables \\
variable "ssh_user" {
  description = ""
  default = "root"
}


variable "ssh_key" {
  description = ""
  default = ""
}

variable "admin_email" {
  description = ""
  default = ""
}