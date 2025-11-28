# # here we specify the main or entire Terraform code

# #How to read/use the existing resources on the Azure Cloud for terraform configurations in your code
# # Passing the resource ID as variable valuen -- we tried 
# # Using terraform Data Source (Top level blocks) ------------

# #Resource Group Data Source
# data "azurerm_resource_group" "existing_network_rg" {
#   name = "MC_god-father-aks-app-demo_god-father-aks-app-cluster_eastus"
# }

# data "azurerm_subnet" "existing_subnet" {
#   name                 = "vm-subnet"
#   virtual_network_name = "aks-vnet-41970527"
#   resource_group_name  = "MC_god-father-aks-app-demo_god-father-aks-app-cluster_eastus"
# }

# resource "azurerm_resource_group" "dev_rg" {
#   name = var.rg_name
#   location = var.location
# }

# resource "azurerm_network_interface" "nic" {
#   name = var.nic_name
#   location = data.azurerm_resource_group.existing_network_rg.location
#   resource_group_name = data.azurerm_resource_group.existing_network_rg.name
#   tags = var.tags

#     ip_configuration {
#         name = var.nic_name_ip_configuration    #vmname-ip-configuration
#         private_ip_address_allocation = "Dynamic"
#         subnet_id = data.azurerm_subnet.existing_subnet.id
#     }
# }


# resource "azurerm_windows_virtual_machine" "hdfc_vm" {  #I want two similar Virtual machines
#   name = var.hdfc_vm_name
#   location = data.azurerm_resource_group.existing_network_rg.location #local.location
#   resource_group_name = data.azurerm_resource_group.existing_network_rg.name
#   size = var.hdfc_vm_size   
#   admin_username = var.hdfc_vm_admin_username
#   admin_password = var.hdfc_vm_admin_password
#   network_interface_ids = [azurerm_network_interface.nic.id]


#   os_disk {
#     name = "${var.hdfc_vm_name}-rinkesh-os-disk" #"hdfc-dev-nic01-os-disk"
#     caching = local.caching #"ReadWrite"
#     storage_account_type = var.hdfc_vm_storage_account_type
#   }

#   source_image_reference {
#     publisher = "MicrosoftWindowsServer"
#     offer     = "WindowsServer"
#     sku       = "2016-Datacenter"
#     version   = "latest"
#   }

# }


# # resource "azurerm_vpn_gateway" "example" {
# #   name                = "example-vpng"
# #   location            = azurerm_resource_group.example.location
# #   resource_group_name = azurerm_resource_group.example.name
# #   virtual_hub_id      = azurerm_virtual_hub.example.id

# #   bgp_settings {
# #     asn = local.asn
# #     peer_weight = local.peer_weight
# #   }
# # }


# #East US 2

# #Meta Arguments




# # Terraform Import
# # changing size of the VM
# # adding additiona disk
# # enabling features basd on the requirement



# #Importing a storage account
# # step1: Write the Terraform code for the resource
# # Step2: ensure you pass all the arguments according to the resource
# # step3: import the resource using import command

# # Terraform Import Command
# # terraform import "azurerm_storage_account.import_01" "/subscriptions/0f87b7f3-b8ff-4c25-b09a-901f6869202e/resourceGroups/god-father-aks-app-demo/providers/Microsoft.Storage/storageAccounts/inspirevideo"


# # /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myresourcegroup/providers/Microsoft.Storage/storageAccounts/myaccount
# # /subscriptions/0f87b7f3-b8ff-4c25-b09a-901f6869202e/resourceGroups/god-father-aks-app-demo/providers/Microsoft.Storage/storageAccounts/inspirevideo


