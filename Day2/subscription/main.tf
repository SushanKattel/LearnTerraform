module "resourceGroup" {
    source = "../module/resource-group"
    name_of_rg = var.r_g_name
    # uta module ma name = name_of_rg vayeko le yaha ni tyai hunxa.
    loc_name =  var.r_g_loc
}

module "vnet" {
    source = "../module/virtualnetwork"
    vn_name = var.vnetName
    loc_name = var.r_g_loc
    rgn = module.resourceGroup.name
    # we can call the value from other module with help of its output.
    # Here, while calling rgn, we go to output of above module and call name var from there.
    # We could have called as in location too but this is demonstration of use of output.tf
    addr_sp = var.as
}
