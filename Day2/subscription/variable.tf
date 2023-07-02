variable "r_g_name" {
  type = string
  default = "TestRG_SK"
}
variable "r_g_loc" {
    type = string
    default = "eastus"
}
variable "vnetName" {
    type = string
    default = "ssk-network"
}

variable "as" {
  type = list(string)
  default = ["10.0.1.0/24"]
}
