# https://github.com/kubernetes-sigs/nfs-subdir-external-provisioner

locals {
  values = {
    "storageClass.name"            = var.storage_class_name
    "storageClass.defaultClass"    = var.storage_class_default
    "storageClass.provisionerName" = var.storage_class_provisioner_name
    "nfs.server"                   = var.nfs_server
    "nfs.path"                     = var.nfs_path
    "nfs.mountOptions"             = var.nfs_mount_options
  }
}

resource "helm_release" "chart" {
  name       = var.name
  chart      = "nfs-subdir-external-provisioner"
  repository = "https://kubernetes-sigs.github.io/nfs-subdir-external-provisioner"
  version    = "4.0.17"
  namespace  = var.namespace

  dynamic "set" {
    for_each = { for k, v in local.values : k => v if v != null }
    iterator = it
    content {
      name  = it.key
      value = it.value
    }
  }
}
