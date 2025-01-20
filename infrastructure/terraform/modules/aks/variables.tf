variable "cluster_name" {
  description = "Name of the AKS cluster"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "dns_prefix" {
  description = "DNS prefix for the cluster"
  type        = string
}

variable "kubernetes_version" {
  description = "Kubernetes version"
  type        = string
}

variable "default_node_pool" {
  description = "Default node pool configuration"
  type = object({
    name                 = string
    node_count           = number
    vm_size              = string
    subnet_id            = string
    auto_scaling_enabled = bool
    min_count            = number
    max_count            = number
    os_disk_size_gb      = number
  })
}


variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default     = {}
}
