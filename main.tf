terraform {
  # backend "azurerm" {
  #   resource_group_name  = "MANI-1"
  #   storage_account_name = "masa0001"
  #   container_name       = "tstate"
  #   key                  = "BCQEZtWYpT3+WbtMZj/JgRjgqyVtUd7OG1MBtriIYxv99q2RVSg9jr3Y94YMxW9MoXQ45nelhUCu+AStaHCNUg=="
  # }
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
}

provider "azurerm" {
  features {
  }
  skip_provider_registration = "true"
}

# resource "azurerm_resource_group" "RG" {
#   name     = "RGTM"
#   location = "Central India"
# }

resource "azurerm_virtual_network" "vnet" {
  name                = "vnet0"
  resource_group_name = "MANI-1"
  location            = "Central India"
  address_space       = ["10.0.0.0/16"]
}

# resource "azurerm_subnet" "subnets" {
#   name                 = "subnetprivate"
#   virtual_network_name = azurerm_virtual_network.vnet.name
#   resource_group_name  = azurerm_virtual_network.vnet.resource_group_name
#   address_prefixes     = ["10.0.0.0/24"]
# }

# resource "azurerm_network_security_group" "nsgs" {
#   name                = "nsg01"
#   location            = azurerm_virtual_network.vnet.location
#   resource_group_name = azurerm_virtual_network.vnet.resource_group_name
# }

# resource "azurerm_network_security_rule" "dev-rule" {
#   name                        = "dev-rule-allow"
#   priority                    = 100
#   direction                   = "Inbound"
#   access                      = "Allow"
#   protocol                    = "*"
#   source_port_range           = "*"
#   destination_port_range      = "*"
#   source_address_prefix       = "*"
#   destination_address_prefix  = "*"
#   resource_group_name         = azurerm_virtual_network.vnet.resource_group_name
#   network_security_group_name = azurerm_network_security_group.nsgs.name
# }

# resource "azurerm_subnet_network_security_group_association" "subnsg" {
#   subnet_id                 = azurerm_subnet.subnets.id
#   network_security_group_id = azurerm_network_security_group.nsgs.id
# }

# resource "azurerm_network_interface" "NIC" {
#   name                = "nic01"
#   location            = "Central India"
#   resource_group_name = azurerm_virtual_network.vnet.resource_group_name

#   ip_configuration {

#     name                          = "internal"
#     subnet_id                     = azurerm_subnet.subnets.id
#     private_ip_address_allocation = "Dynamic"
#   }

# }

# resource "azurerm_linux_virtual_machine" "VM01" {

#   name                  = "VM01"
#   location              = "Central India"
#   resource_group_name   = azurerm_virtual_network.vnet.resource_group_name
#   size                  = "Standard_F2"
#   admin_username        = "netadmin"
#   network_interface_ids = [azurerm_network_interface.NIC.id]

#   admin_ssh_key {

#     username   = "netadmin"
#     public_key = file("~/.ssh/id_rsa.pub")
#   }

#   os_disk {

#     caching              = "ReadWrite"
#     storage_account_type = "Standard_LRS"
#   }

#   source_image_reference {

#     publisher = "Canonical"
#     offer     = "0001-com-ubuntu-server-focal"
#     sku       = "20_04-lts"
#     version   = "latest"
#   }
# }

# resource "azurerm_storage_account" "masa01" {
#   name                          = "masa0001"
#   resource_group_name           = "MANI-1"
#   location                      = "Central India"
#   account_tier                  = "Standard"
#   account_replication_type      = "LRS"
#   public_network_access_enabled = "false"
# }
