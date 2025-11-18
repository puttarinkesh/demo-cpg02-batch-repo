# We specify all variable values

#variables

# variable "" {} #syntax

variable "sto_acc_name" {
  description = "the name of the storage account"
  type = string
  default = "democpg02storageaccount"
}

variable "demo_stor_acc_23_name" {
  description = "value"
  type = string
  default = "hdfc73652389hfk"
}

# variable "rg_name" {
#   description = "rg name for straoge account"
#   type = string
#   default = "rg-demo-cpg02-01"
# }

variable "sto_location" {
  type = string
  default = "central india"
}

variable "account_tier" {
  default = "Premium"
} 

variable "tags" {
  default = {
  architect = "ravi"
  environment = "dev"
  project-owner = "kranthi"
  client = "akshay"
  }
}

variable "shabnam_account_replication_type" {
  description = "(Required) Defines the type of replication to use for this storage account. Valid options are LRS, GRS, RAGRS, ZRS, GZRS and RAGZRS. Changing this forces a new resource to be created when types LRS, GRS and RAGRS are changed to ZRS, GZRS or RAGZRS and vice versa."
  type = string
  default = "LRS"
}

variable "account_kind" {
  description = " (Optional) Defines the Kind of account. Valid options are BlobStorage, BlockBlobStorage, FileStorage, Storage and StorageV2. Defaults to StorageV2."
  default = "FileStorage"
}

variable "demo_stor_acc_23_location" {
  description = "value"
  type = string  
  default = "west europe"
}

#RG variables
variable "rg_name" {
  description = "rg name"
  type = string
}

variable "location" {
  type = string
  default = "eastus"
}


#NIC Variables 

variable "nic_name" {
  description = "(Required) The name of the Network Interface. Changing this forces a new resource to be created."
  type = string
}

variable "nic_name_ip_configuration" {
  description = ""
  type = string
  default = "hdfc-dev-nic01-ip-name"
}

variable "hdfc_vm_admin_username" {
  description = "(Optional) The ID of the Subnet where this Network Interface should be located in."
  type = string
  default = "dev-admin"
}

variable "hdfc_vm_storage_account_type" {
  description = "(Optional) The Type of Storage Account which should back this the Internal OS Disk. Possible values are Standard_LRS, StandardSSD_LRS, Premium_LRS, StandardSSD_ZRS and Premium_ZRS. Changing this forces a new resource to be created."
  type = string
  default = "Standard_LRS"
}

variable "hdfc_vm_name" {
  description = "(Required) The name of the Windows Virtual Machine. Changing this forces a new resource to be created."
  type = string
}
variable "subscription_id" {
  
}
variable "hdfc_vm_admin_password" {
  description = ""
  type = string
  default = "jjl13$#@kdch123BPOHN"
}

variable "hdfc_vm_size" {
  description = "vm size"
  type = string
  # default = "Standard_DS2_v2"  #"Standard_D16a_v4"  #"Standard_B2as_v2"  #
}

# variable "" {
#   description = ""vm size
#   type = string
#   default = ""
# }

# variable "" {
#   description = ""
#   type = string
#   default = ""
# }

# variable "" {
#   description = ""
#   type = string
#   default = ""
# }

variable "hdfc_uat_vm_name" {
  type = string
  default = "hdfc-uat-vm01"
  
}