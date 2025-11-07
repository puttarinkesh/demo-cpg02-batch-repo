terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.52.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {
  }
  subscription_id = "0f87b7f3-b8ff-4c25-b09a-901f6869202e"
}