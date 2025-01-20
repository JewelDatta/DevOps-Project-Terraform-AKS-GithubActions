output "cluster_id" {
  value = azurerm_kubernetes_cluster.aks_clusster.id
}

output "kube_config" {
  value     = azurerm_kubernetes_cluster.aks_clusster.kube_config_raw
  sensitive = true
}
