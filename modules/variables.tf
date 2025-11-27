variable "env" {
  description = "env"
  type        = string
  default     = "nonprod"
}
variable "postfix" {
  description = "postfix"
  type        = string
  default     = "pilot"
}
variable "app" {
  description = ""
  type        = string
  default     = "loans"
}
variable "rg_client_names" {
  description = "for each values"
  type        = set(string)
  default     = []
}

#NIC Variables 
variable "nic_name" {
  description = "(Required) The name of the Network Interface. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "nic_name_ip_configuration" {
  description = ""
  type        = string
  default     = null
}
variable "module_vm_admin_username" {
  description = "(Optional) The ID of the Subnet where this Network Interface should be located in."
  type        = string
  default     = null
}
variable "module_vm_storage_account_type" {
  description = "(Optional) The Type of Storage Account which should back this the Internal OS Disk. Possible values are Standard_LRS, StandardSSD_LRS, Premium_LRS, StandardSSD_ZRS and Premium_ZRS. Changing this forces a new resource to be created."
  type        = string
  default     = "Standard_LRS"
}
variable "module_vm_name" {
  description = "(Required) The name of the Windows Virtual Machine. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "module_vm_admin_password" {
  description = ""
  type        = string
  default     = null
}
variable "module_vm_size" {
  description = "vm size"
  type        = string
  default     = "Standard_DS2_v2" #"Standard_D16a_v4"  #"Standard_B2as_v2"  #
}
variable "module_vm_caching" {
  description = "vm disk caching"
  type        = string
  default     = "ReadWrite"
}
variable "tags" {}
variable "rg_name" {
  description = "rg name for straoge account"
  type        = string
  default     = null
}
variable "location" {
  type    = string
  default = null
}
variable "private_ip_address_allocation" {
  description = "private_ip_address_allocation"
  type        = string
  default     = "Dynamic"
}
# variable "" {
#   description = ""
#   type = string
#   default = ""
# }
