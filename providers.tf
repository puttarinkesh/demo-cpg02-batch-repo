# terraform {
#   required_providers {
#     azurerm = {
#       source = "hashicorp/azurerm"
#       version = "4.52.0"
#     }
#   }
# }

# provider "azurerm" {
#   # Configuration options
#   features {
#   }
#   subscription_id = "0f87b7f3-b8ff-4c25-b09a-901f6869202e"
# }







terraform {
  required_version = ">1.12.2" #This is Terraform CLI version - https://developer.hashicorp.com/terraform/install
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">=4.50.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "0f87b7f3-b8ff-4c25-b09a-901f6869202e"
}

# AzureRM version