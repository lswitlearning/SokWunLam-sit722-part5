#container-registry
resource "azurerm_container_registry" "container_registry" {
  name                = var.container_registry_name
  resource_group_name = azurerm_resource_group.deakinuni.name
  location            = var.location
  admin_enabled       = true
  sku                 = "Basic"
}