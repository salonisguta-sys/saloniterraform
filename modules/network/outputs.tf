output "vnet_name" {
  value = azurerm_virtual_network.this.name
}

output "vm_subnet_id" {
  value = azurerm_subnet.vm.id
}

output "bastion_subnet_id" {
  value = azurerm_subnet.bastion.id
}
