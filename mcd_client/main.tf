

# #Creating Resource Group Module Code
module "dev_rg" {
  source   = "../modules/resource_group"
  env      = "md-rafi"
  postfix  = "analysis"
  app      = "sales"
  location = "south india"
  tags = {
    "architect"   = "shabnam"
    "developer"   = "sai ram"
    "project_man" = "murali"
  }
}


#Creating module for Virtual Machine
module "user_defined_vm" {
  source                         = "../modules/windows_virtual_machine"
  env                            = "prod"
  postfix                        = "inve"
  app                            = "McD"
  location                       = var.location
  subnet_name                    = "vm-subnet"
  virtual_network_name           = "aks-vnet-41970527"
  virtual_network_rg             = "MC_god-father-aks-app-demo_god-father-aks-app-cluster_eastus"
  private_ip_address_allocation  = "Dynamic" #3"Static"
  module_vm_name                 = "001"
  module_vm_size                 = "Standard_B8s_v2" #"Standard_D2s_v2"
  module_vm_admin_username       = "mcdadmin"
  module_vm_admin_password       = "HGolnhTCTYV54$$@"
module_vm_storage_account_type   = "Premium_LRS"
  # module_vm_storage_account_type = var.location == "eastus" ? "StandardSSD_LRS" : "Premium_LRS"

  # if location is east us then SSD stroage account type else it should be premium
  tags = {
    "architect"   = "shabnam"
    "developer"   = "sai ram"
    "project_man" = "murali"
  }
}

#Create a Resource Group
resource "azurerm_resource_group" "dev_rg" {
  count    = var.location == "north europe" || var.location == "west europe" ? 1 : 0   #deployrg == true ? 1 : 0
  name     = "rg-${var.env}-${var.postfix}-${var.app}-${count.index}"
  location = var.location
}


variable "deploy_resource_group" {
  description = "deploy_resource_group"
  type = bool
  default = false
}













# condition ? truevalue : falsevalue
# bhagya == class ? inclass : notinclass

/*

# equals to == 
# or       ||
# not      != 
# then     ?
# and      && 
else       :


true or false 

resourcegroup is already existing ? take-existing-rg-value : create-new-rg
rg == existing ? var.rg_name : azurerm_resouce_group

existing
rg == true ? var.rg_name : azurerm_resouce_group




creating new condition
deployrg == true ? azurerm_resouce_group : var.rg_name


*/



