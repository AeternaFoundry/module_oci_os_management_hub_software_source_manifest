resource "oci_os_management_hub_software_source_manifest" "os_management_hub_software_source_manifests" {
  for_each = var.os_management_hub_software_source_manifests

  software_source_id = each.value.software_source_id
  content            = each.value.content

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

