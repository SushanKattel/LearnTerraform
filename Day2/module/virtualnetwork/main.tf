resource "azurerm_virtual_network" "ssk" {
  name                = var.vn_name
  location            = var.loc_name
  resource_group_name = var.rgn
  address_space       = var.addr_sp
}
