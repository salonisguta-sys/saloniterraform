module "resource_group" {
  source = "../../modules/resource-group"

  name     = "rg-azure-dev"
  location = var.location

}
module "network" {
  source = "../../modules/network"

  vnet_name          = "vnet-azure-dev"
  location           = var.location
  resource_group_name = module.resource_group.name
}
module "nsg" {
  source = "../../modules/nsg"

  name                = "nsg-vm-dev"
  location            = var.location
  resource_group_name = module.resource_group.name
  subnet_id           = module.network.vm_subnet_id


}

module "vm" {
  source = "../../modules/vm"

  name                = "vm-dev"
  location            = var.location
  resource_group_name = module.resource_group.name
}