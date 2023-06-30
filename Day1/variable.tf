variable name_of_rg{
    type = string
    description = "Name of resourceGroup"
    default = "SkTest"
}

variable "loc_name" {
  type = string
  default = "EastUS"
}

variable "vn_name" {
    type = string
    default = "ssk-network"
}

variable "addr_sp" {
  type = list(string)
  default = ["10.0.1.0/24"]
}
