

# Terraform default block syntax 


# resource "resoure_type" "local_reference_name" {
#     arguments = value of arguments followed by data types. 
# }



# resource "resoure_type" "local_reference_name" {
#     arguments = value of arguments followed by data types. 
# }


# resource --> create/update a resource 

# resoure_type --> azurerm_storage_account, azurerm_windows_virtual_machine

# local_reference_name --> basically used to reference the blocks. 

# arm --> azure resoure manager



# resource "azurerm_resource_group" "example" {
#   name     = "example"
#   location = "West Europe"
# }


# azurerm_resource_group --> TF Block

# example --> Local reference name

# Terraform Workflow

# Terraform Init - To initialize the provider plugins and download the module code if available

# terraform validate - to check the syntax errors of your code. 

# terraform plan - this will generate execution plan of your code. 

# terraform apply - this will create or update or manage the resources 

# terraform destroy - this will delete or remove the resoruces which are created using Terraform

# command to login into Azure using Terminal
# az login - to login to azure account
# az account set --subscription xxx-xxxx-xxx-xxx
# az account show

# resource "azurerm_resource_group" "demo_cpg02-03" {
#     name = "rg-hdfc-app_ravindra"
#     location = "east us"
# }

/*  start of the comment
#Virtual Network
resource "azurerm_virtual_network" "vnet_01" {
  name = "vnet-icici-cpg02-01"
  resource_group_name = azurerm_resource_group.demo_cpg02.name
  location = azurerm_resource_group.demo_cpg02.location
  address_space = ["192.168.0.0/24"]
  dns_servers = ["10.10.0.0"]
  private_endpoint_vnet_policies = "Disabled"
}

resource "azurerm_virtual_network" "vnet_02" {
  name = "vnet-hdfc-cpg02-01"
  resource_group_name = azurerm_resource_group.demo_cpg02.name
  location = azurerm_resource_group.demo_cpg02.location
  address_space = ["10.0.0.0/24"]
  dns_servers = []
  private_endpoint_vnet_policies = "Disabled"
}  end of the comment
*/ 

# Storage Account
resource "azurerm_storage_account" "demo_stor_acc" {
    name = "democpg02storageaccount"
    resource_group_name = "rg-demo-cpg02-01"
    location = "central india"
    account_tier = "Premium"
    account_replication_type = "LRS"
    account_kind = "FileStorage"
}

resource "azurerm_storage_account" "demo_stor_acc_23" {
    name = "democpg73652389hfk"
    resource_group_name = "rg-demo-cpg02-01"
    location = "central india"
    account_tier = "Premium"
    account_replication_type = "LRS"
}

# #1st resource
# resource "azurerm_resource_group" "demo-cpg02-01" {
#     name = "rg-demo-cpg02-01"
#     location = "south india"
# }

#4th resource
# This resource should be created after rg and storage account creation due to Application dependency
resource "azurerm_resource_group" "demo_cpg02-02" {
    name = "rg-hdfc-app-01"
    location = "east us"

    depends_on = [azurerm_storage_account.demo_stor_83w67w7acc, azurerm_resource_group.demo_cpg02]
}


#2nd resource
resource "azurerm_storage_account" "demo_stor_83w67w7acc" {
    name = "democpg8777q23"
    resource_group_name = azurerm_resource_group.demo-cpg02-01.name
    location = azurerm_resource_group.demo-cpg02-01.location
    account_tier = "Premium"
    account_replication_type = "LRS"
}

# #1std resource
# resource "azurerm_resource_group" "demo_cpg02" {
#     name = "rg-icici-app-01"
#     location = "west europe"
# }


#Dependencies
# Implicit - resource referencing 
# Explicit - Explicitly add the depency without resource referencing

#comments #ignore
# single line comments    - # or //
# multi line comments     - /* */





