resource "azurerm_app_service" "example" {
  name = var.azurerm_app_service
  location = var.location
  resource_group_name = var.resource_group_name
  app_service_plan_id = var.app_service_plan_id
  connection_string {
    name  = "Database"
    type  = "SQLServer"
    value = "Server=some-server.mydomain.com;Integrated Security=SSPI"
  }
}
