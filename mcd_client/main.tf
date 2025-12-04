

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
  postfix                        = "inventory"
  app                            = "McD"
  location                       = "east us"
  subnet_name                    = "vm-subnet"
  virtual_network_name           = "aks-vnet-41970527"
  virtual_network_rg             = "MC_god-father-aks-app-demo_god-father-aks-app-cluster_eastus"
  private_ip_address_allocation  = "Dynamic" #3"Static"
  module_vm_name                 = "001"
  module_vm_size                 = "Standard_B8s_v2" #"Standard_D2s_v2"
  module_vm_admin_username       = "mcdadmin"
  module_vm_admin_password       = "HGolnhTCTYV54$$@"
  module_vm_storage_account_type = "Premium_LRS"
  tags = {
    "architect"   = "shabnam"
    "developer"   = "sai ram"
    "project_man" = "murali"
  }
}









