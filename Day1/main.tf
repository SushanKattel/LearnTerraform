terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.63.0"
    }
  }
}

provider "azurerm" {
features{}
}

resource "azurerm_resource_group" "SkTest" {
  name     = var.name_of_rg
  location = var.loc_name
}

resource "azurerm_virtual_network" "ssk" {
  name                = var.vn_name
  location            = azurerm_resource_group.SkTest.location
  resource_group_name = azurerm_resource_group.SkTest.name
  address_space       = var.addr_sp
  dns_servers         = ["10.0.0.4", "10.0.0.5"]

  subnet {
    name           = "subnet1"
    address_prefix = "10.0.1.0/24"
  }

}
