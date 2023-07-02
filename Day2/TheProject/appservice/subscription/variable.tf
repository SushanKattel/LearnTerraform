variable "app_service_name" {
    type = string
    default = "TestApp"
}

variable "location" {
    type = string
    default = "eastus"
}

variable "resource_group_name" {
    type = string
    default = "Test_rg"
}

variable "app_service_plan" {
    type = string
    default = "test_ServicePlan"
}
