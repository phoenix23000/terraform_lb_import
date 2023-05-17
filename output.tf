output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "Region" {
  value = azurerm_resource_group.rg.location
}

output "azurerm_public_ip" {
  value = azurerm_public_ip.assterra1.ip_address 
}

output "first_VM" {
  value = azurerm_virtual_machine.assterra1[0].name
}

output "second_VM" {
  value = azurerm_virtual_machine.assterra1[1].name
}

output "private_ip_first_VM" {
  value = azurerm_network_interface.assterra1[0].private_ip_address
}

output "private_ip_second_VM" {
  value = azurerm_network_interface.assterra1[1].private_ip_address
}