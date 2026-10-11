data "azurerm_storage_blob" "storage_blob_lookup" {
  for_each = var.storage_blob_lookup

  name                 = each.value.name
  storage_container_id = each.value.storage_container_id
  metadata             = each.value.metadata
}

