resource "azurerm_storage_container" "kikop1" {
    for_each = var.kikop
  name = each.key
  storage_account_name = each.value.storage_account_name 
  container_access_type =   each.vale.container_access_type
}