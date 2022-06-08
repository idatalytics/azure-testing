resource "azurerm_resource_group" "rg1" {
  name      = "testing-euclid"
  location  = var.resource_group_location
}
