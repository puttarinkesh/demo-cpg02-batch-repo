#Meta Arguments

#Count - You can add the count argument to resource, module, and ephemeral blocks to create and 
#manage multiple instances of each without writing a separate block for each instance. Refer to the count reference for details.

# Count is used for creating Identical resources


#1st resource
#Rinkesh - Create 5 Resource Groups they share same configuration. 
resource "azurerm_resource_group" "demo_cpg02" {
    count = 3
    name = "rg-icici-app-${count.index}"
    location = "west europe"
}

#3rd rg 
#Rinkesh - Create 5 Storage accounts and they should be placed in respective Resource Groups, 
#also it shares same configuration. 
resource "azurerm_storage_account" "import_01" {
  count                     = 4
  name                      = "inspirevideo${count.index}"
  resource_group_name       = azurerm_resource_group.demo_cpg02[1].name
  location                  = azurerm_resource_group.demo_cpg02[1].location
  account_tier              = "Premium"  #"Standard"  #
  account_replication_type  = "ZRS"
  account_kind              = "BlockBlobStorage"  #"StorageV2" #
}


# azurerm_storage_account.import_01[5]
# azurerm_resource_group.demo_cpg02[5].name


#for_each - is used for creating resource with diff. diff. configurations (Wont work for Identical resources)