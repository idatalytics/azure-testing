resource "azurerm_resource_group" "rg" {
  name      = "testing-euclid"
  location  = var.resource_group_location
}
