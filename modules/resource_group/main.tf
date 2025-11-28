
resource "azurerm_resource_group" "dev_rg" {
  name     = "rg-${var.env}-${var.postfix}-${var.app}"
  location = var.location
  tags     = var.tags
}
