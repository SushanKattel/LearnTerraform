resource "azurerm_resource_group" "SkTest" {
  name     = var.name_of_rg
  # yaha name ma name_of_rg vayekale tala subscription ma call garda yeii hunu parxa
  location = var.loc_name
}
