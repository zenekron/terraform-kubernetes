################################################################################
# chart
################################################################################

variable "name" {
  type = string
}

variable "namespace" {
  type = string
}


################################################################################
# nfs-subdir-external-provisioner
################################################################################

variable "storage_class_name" {
  type    = string
  default = "nfs-client"
}

variable "storage_class_default" {
  type    = bool
  default = false
}

variable "storage_class_provisioner_name" {
  type    = string
  default = null
}

variable "nfs_server" {
  type        = string
  description = "Hostname of the NFS server."
}

variable "nfs_path" {
  type        = string
  description = "Basepath of the mount point to be used."
}

variable "nfs_mount_options" {
  type        = string
  default     = null
  description = "Mount options (e.g. 'nfsvers=3')."
}
