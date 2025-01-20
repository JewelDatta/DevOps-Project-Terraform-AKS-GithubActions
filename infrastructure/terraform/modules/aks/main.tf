resource "azurerm_kubernetes_cluster" "aks_clusster" {
  name                = var.cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix
  kubernetes_version  = var.kubernetes_version

  default_node_pool {
    name                 = var.default_node_pool.name
    node_count           = var.default_node_pool.node_count
    vm_size              = var.default_node_pool.vm_size
    vnet_subnet_id       = var.default_node_pool.subnet_id
    auto_scaling_enabled = var.default_node_pool.auto_scaling_enabled
    min_count            = var.default_node_pool.min_count
    max_count            = var.default_node_pool.max_count
    os_disk_size_gb      = var.default_node_pool.os_disk_size_gb
  }

  identity {
    type = "SystemAssigned"
  }

  tags = var.tags
}
