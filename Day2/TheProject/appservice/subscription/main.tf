module "azurerm_app_service" {
    source = "../module/appservice"
    azurerm_app_service = var.app_service_name
    location = var.location
    resource_group_name = var.resource_group_name
    app_service_plan_id = module.azurerm_app_service_plan.idSP
}

module "azurerm_app_service_plan" {
    source = "../module/serviceplan"
    name = var.app_service_plan
    location = var.location
    resource_group_name = var.resource_group_name
}
