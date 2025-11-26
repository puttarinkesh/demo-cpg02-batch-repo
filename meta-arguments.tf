#Meta Arguments

#Count - You can add the count argument to resource, module, and ephemeral blocks to create and 
#manage multiple instances of each without writing a separate block for each instance. Refer to the count reference for details.

# Count is used for creating Identical resources


#1st resource
#Rinkesh - Create 5 Resource Groups they share same configuration. 
# resource "azurerm_resource_group" "demo_cpg02" {
#     count = 3
#     name = "rg-icici-app-${count.index}"
#     location = "west europe"
# }

#3rd rg 
#Rinkesh - Create 5 Storage accounts and they should be placed in respective Resource Groups, 
#also it shares same configuration. 
# resource "azurerm_storage_account" "import_01" {
#   count                     = 4
#   name                      = "inspirevideo${count.index}"
#   resource_group_name       = azurerm_resource_group.demo_cpg02[1].name
#   location                  = azurerm_resource_group.demo_cpg02[1].location
#   account_tier              = "Premium"  #"Standard"  #
#   account_replication_type  = "ZRS"
#   account_kind              = "BlockBlobStorage"  #"StorageV2" #
# }


# azurerm_storage_account.import_01[5]
# azurerm_resource_group.demo_cpg02[5].name


#for_each - is used for creating resource with diff. diff. configurations (Wont work for Identical resources)

# For_each will accept either map or set of strings

# map
# {
#   key1 = value1,
#   key2 = value2,
#   key3 = value3
# }

# set
# Collection of unique values in a list. It will ignore the duplicates
# ["rinkesh", "gokul", "parihar", "kranthi", "parihar"]



# #for_each map 
# resource "azurerm_storage_account" "for_each_meta" {
#   for_each = {
#   "hdfc" = "LRS" #"eastus",
#   "axis" = "GRS" #"south india",
#   "icici" = "ZRS"  #"west europe"
# }
#   name                      = "pilotloans${each.key}"
#   resource_group_name       = azurerm_resource_group.bank_rgs["icici"].name
#   location                  = azurerm_resource_group.bank_rgs["icici"].location
#   account_tier              = "Standard"  #"Premium"  #
#   account_replication_type  = "${each.value}"
#   account_kind              = "BlockBlobStorage"  #"StorageV2" #
# }

# for_each code
# resource "azurerm_resource_group" "bank_rgs" {
#   for_each = {
#   "hdfc" = "eastus",
#   "axis" = "south india",
#   "icici" = "west europe"
# }
#   name      = "${var.env}-${var.postfix}-${var.app}-${each.key}"
#   location  = each.value
# }

# #for_each chaining  -
# resource "azurerm_storage_account" "for_each_meta" {
#   for_each = {
#   "hdfc"  = "LRS",
#   "axis"  = "GRS",
#   "icici" = "ZRS"
# }
#   name                      = "pilotloans${each.key}"
#   resource_group_name       = azurerm_resource_group.bank_rgs[each.key].name
#   location                  = azurerm_resource_group.bank_rgs[each.key].location
#   account_tier              = "Standard"  #"Premium"  #
#   account_replication_type  = "${each.value}"
#   account_kind              = "BlockBlobStorage"  #"StorageV2" #
# }


# azurerm_storage_account.for_each_meta["hdfc"]
# azurerm_resource_group.bank_rgs["hdfc"]:


# azurerm_storage_account.for_each_meta["axis"]
# azurerm_resource_group.bank_rgs[axis].name

# azurerm_storage_account.for_each_meta["icici"]
# azurerm_resource_group.bank_rgs["icici"]
# azurerm_resource_group.bank_rgs["icici"]


#life_cycle {} - meta argument
  # - ignore_changes
  # - prevent_destroy
  # - create_before_destroy


# - ignore_changes
resource "azurerm_resource_group" "bank_rgs" {
  name      = "${var.env}-${var.postfix}-${var.app}"
  location  = "south india"
}

resource "azurerm_storage_account" "life_cycle_meta" {
  name                      = "pilothdfccar${var.app}"
  resource_group_name       = azurerm_resource_group.bank_rgs.name
  location                  = azurerm_resource_group.bank_rgs.location
  account_tier              = "Standard"  #"Premium"  #
  account_replication_type  = "GRS"
  account_kind              = "StorageV2" #"BlockBlobStorage"  #
  public_network_access_enabled = false

  # lifecycle {
  #   ignore_changes = [
  #     account_replication_type,
  #     public_network_access_enabled
  #   ]
  # }

  # lifecycle {
  #   create_before_destroy = true
  # }


  lifecycle {
    prevent_destroy = true
  }
}

resource "azurerm_storage_account" "life_cycle_meta_02s" {
  name                      = "pilothdfchome${var.app}"
  resource_group_name       = azurerm_resource_group.bank_rgs.name
  location                  = azurerm_resource_group.bank_rgs.location
  account_tier              = "Standard"  #"Premium"  #
  account_replication_type  = "GRS"
  account_kind              = "StorageV2" #"BlockBlobStorage"  #
  public_network_access_enabled = false
}





