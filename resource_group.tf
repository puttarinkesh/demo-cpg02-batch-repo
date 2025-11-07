

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



resource "azurerm_resource_group" "demo-cpg02-01" {
    name = "rg-demo-cpg02-01"
    location = "central india"
}

resource "azurerm_resource_group" "demo_cpg02-02" {
    name = "rg-hdfc-app-01"
    location = "east us"
}


# Storage Account

resource "azurerm_storage_account" "demo_stor_acc" {
    name = "democpg02storageaccount"
    resource_group_name = "rg-demo-cpg02-01"
    location = "central india"
    account_tier = "Premium"
    account_replication_type = "LRS"
    account_kind = "FileStorage"
}




# resource "azurerm_storage_account" "demo_stor_acc_01" {
#     name = "democpg-storage_account"
#     resource_group_name = "rg-demo-cpg02-01"
#     location = "central india"
#     account_tier = "Premium"
#     account_replication_type = "LRS"
# }



resource "azurerm_resource_group" "demo_cpg02-03" {
    name = "rg-hdfc-app_ravindra"
    location = "east us"
}
