variable "storage_blob_lookup" {
  description = <<EOT
Map of storage_blob_lookup, attributes below
Required:
    - name
    - storage_container_id
Optional:
    - metadata
EOT

  type = map(object({
    name                 = string
    storage_container_id = string
    metadata             = optional(map(string))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

