resource "azurerm_resource_group" "rg1" {
  name      = "test-euclid"
  location  = var.resource_group_location
}
