variable "os_management_hub_software_source_manifests" {
  description = <<EOT
Map of os_management_hub_software_source_manifests, attributes below
Required:
    - software_source_id
Optional:
    - content
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    software_source_id = string
    content            = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

