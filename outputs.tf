output "resource_group_name" {
  description = "Name of the Resource Group created for the landing zone."
  value       = azurerm_resource_group.rg.name
}

output "virtual_network_name" {
  description = "Name of the Virtual Network."
  value       = azurerm_virtual_network.vnet.name
}

output "subnet_ids" {
  description = "IDs of the subnets created in the landing zone."
  value = {
    mgmt     = azurerm_subnet.mgmt.id
    workload = azurerm_subnet.workload.id
    shared   = azurerm_subnet.shared.id
  }
}

output "log_analytics_workspace_id" {
  description = "ID of the Log Analytics Workspace used for diagnostics."
  value       = azurerm_log_analytics_workspace.law.id
}
