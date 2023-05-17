 resource "azurerm_virtual_network" "assterra1" {
   name                = "assterravn"
   address_space       = ["10.0.0.0/16"]
   location            = azurerm_resource_group.assterra1.location
   resource_group_name = azurerm_resource_group.assterra1.name
 }

 resource "azurerm_subnet" "assterra1" {
   name                 = "assterrasub"
   resource_group_name  = azurerm_resource_group.assterra1.name
   virtual_network_name = azurerm_virtual_network.assterra1.name
   address_prefixes     = ["10.0.2.0/24"]
 }

 resource "azurerm_public_ip" "assterra1" {
   name                         = "publicIPForLB"
   location                     = azurerm_resource_group.assterra1.location
   resource_group_name          = azurerm_resource_group.assterra1.name
   allocation_method            = "Static"
 }