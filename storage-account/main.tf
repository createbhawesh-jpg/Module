resource "azurerm_storage_account" "finop1" {
    for_each = var.finop
    name = each.key
    location = each.value
    resource_group_name = each.value.resource_group_name
    account_tier = each.value.account_tier
    account_replication_type = each.value.account_replication_type
}