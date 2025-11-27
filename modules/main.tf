
resource "azurerm_resource_group" "dev_rg" {
  name     = var.rg_name
  location = var.location
}

resource "azurerm_network_interface" "nic" {
  name                = var.nic_name
  location            = data.azurerm_resource_group.existing_network_rg.location
  resource_group_name = data.azurerm_resource_group.existing_network_rg.name
  tags                = var.tags

  ip_configuration {
    name                          = var.nic_name_ip_configuration
    private_ip_address_allocation = var.private_ip_address_allocation
    subnet_id                     = data.azurerm_subnet.existing_subnet.id
  }
}

resource "azurerm_windows_virtual_machine" "module_vm" { #I want two similar Virtual machines
  name                  = var.module_vm_name
  location              = data.azurerm_resource_group.existing_network_rg.location #local.location
  resource_group_name   = data.azurerm_resource_group.existing_network_rg.name
  size                  = var.module_vm_size
  admin_username        = var.module_vm_admin_username
  admin_password        = var.module_vm_admin_password
  network_interface_ids = [azurerm_network_interface.nic.id]

  os_disk {
    name                 = "${var.module_vm_name}-os-disk" #"hdfc-dev-nic01-os-disk"
    caching              = var.module_vm_caching           #"ReadWrite"
    storage_account_type = var.module_vm_storage_account_type
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}
