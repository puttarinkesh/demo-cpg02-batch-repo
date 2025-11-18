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
      version = "<=4.50.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "0f87b7f3-b8ff-4c25-b09a-901f6869202e"
}

#Remote State Configuration
terraform {
  backend "azurerm" {
    # use_oidc             = true                                    # Can also be set via `ARM_USE_OIDC` environment variable.
    use_azuread_auth     = false                                    # Can also be set via `ARM_USE_AZUREAD` environment variable.
    tenant_id            = "d870244a-9053-483e-9a46-0597932f0a73"  # Can also be set via `ARM_TENANT_ID` environment variable.
    # client_id            = "00000000-0000-0000-0000-000000000000"  # Can also be set via `ARM_CLIENT_ID` environment variable.
    storage_account_name = "inspirevideo"                              # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    resource_group_name  = "god-father-aks-app-demo"
    container_name       = "terraform-state-save"                               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "terraform.tfstate"                # name of the state file 
  }
}
