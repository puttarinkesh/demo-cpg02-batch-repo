
resource "azurerm_resource_group" "dev_rg" {
  name     = "rg-${var.env}-${var.postfix}-${var.app}"
  location = var.location
}

# data "azurerm_subnet" "existing_subnet" {
#   name                 = var.subnet_name
#   virtual_network_name = var.virtual_network_name
#   resource_group_name  = var.virtual_network_rg
# }

# resource "azurerm_network_interface" "nic" {
#   name                = "${var.env}-${var.postfix}-${var.app}-nic"
#   location            = azurerm_resource_group.dev_rg.location
#   resource_group_name = azurerm_resource_group.dev_rg.name
#   tags                = var.tags

#   ip_configuration {
#     name                          = "${var.env}-${var.postfix}-${var.app}-nic-ip"
#     private_ip_address_allocation = var.private_ip_address_allocation
#     subnet_id                     = data.azurerm_subnet.existing_subnet.id
#   }
# }

# #Virtual machines code
# resource "azurerm_windows_virtual_machine" "module_vm" {
#   name                  = "${var.env}-${var.postfix}-${var.app}-${var.module_vm_name}-vm"
#   location              = azurerm_resource_group.dev_rg.location
#   resource_group_name   = azurerm_resource_group.dev_rg.name
#   size                  = var.module_vm_size
#   admin_username        = var.module_vm_admin_username
#   admin_password        = var.module_vm_admin_password
#   network_interface_ids = [azurerm_network_interface.nic.id]

#   os_disk {
#     name                 = "${var.env}-${var.postfix}-${var.app}-${var.module_vm_name}-os-disk"
#     caching              = var.module_vm_caching
#     storage_account_type = var.module_vm_storage_account_type
#   }

#   source_image_reference {
#     publisher = "MicrosoftWindowsServer"
#     offer     = "WindowsServer"
#     sku       = "2016-Datacenter"
#     version   = "latest"
#   }
# }
