module "rg-module" {
  source = "../../modules/azurerm_rg"
 resource_groups     = var.rg
}
module "vnet-module" {
  depends_on = [module.rg-module]
  source = "../../modules/azurerm_virtual_network"
  vnets = var.vnet

}
module "subnet-module" {
  depends_on = [module.vnet-module]
  source = "../../modules/azurerm_subnet"
  subnets = var.subnett
  
}