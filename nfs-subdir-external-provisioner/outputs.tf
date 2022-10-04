################################################################################
# chart
################################################################################

output "name" {
  value = var.name
}

output "namespace" {
  value = var.namespace
}


################################################################################
# nfs-subdir-external-provisioner
################################################################################

output "storage_class_name" {
  value = var.storage_class_name
}

output "storage_class_default" {
  value = var.storage_class_default
}

output "storage_class_provisioner_name" {
  value = var.storage_class_provisioner_name
}

output "nfs_server" {
  value = var.nfs_server
}

output "nfs_path" {
  value = var.nfs_path
}

output "nfs_mount_options" {
  value = var.nfs_mount_options
}
