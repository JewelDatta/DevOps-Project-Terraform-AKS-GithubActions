output "vnet_id" {
  value = azurerm_virtual_network.aks_vnet.id
}

output "subnet_ids" {
  value = { for k, v in azurerm_subnet.aks_subnet : k => v.id }
}
