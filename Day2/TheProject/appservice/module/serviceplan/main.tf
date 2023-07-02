resource "azurerm_app_service_plan" "main" {
  name = var.name
  location = var.location
  resource_group_name = var.resource_group_name

  sku {
    tier = "Standard"
    size = "S1"
  }
}
