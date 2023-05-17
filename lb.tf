 resource "azurerm_lb" "assterra1" {
   name                = "assterraLB"
   location            = azurerm_resource_group.assterra1.location
   resource_group_name = azurerm_resource_group.assterra1.name

   frontend_ip_configuration {
     name                 = "publicIPAddress"
     public_ip_address_id = azurerm_public_ip.assterra1.id
   }
 }

 resource "azurerm_lb_backend_address_pool" "assterra1" {
   loadbalancer_id     = azurerm_lb.assterra1.id
   name                = "BackEndAddressPool"
 }

 resource "azurerm_network_interface" "assterra1" {
   count               = 2
   name                = "acctni${count.index}"
   location            = azurerm_resource_group.assterra1.location
   resource_group_name = azurerm_resource_group.assterra1.name

ip_configuration {
     name                          = "testConfiguration"
     subnet_id                     = azurerm_subnet.assterra1.id
     private_ip_address_allocation = "dynamic"
   }
 }