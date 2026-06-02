resource "azurerm_resource_group" "learn" {
    for_each = var.devop
    name = each.key
    location = each.value.location
    }