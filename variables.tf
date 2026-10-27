variable "service_principal_claims_mapping_policy_assignments" {
  description = <<EOT
Map of service_principal_claims_mapping_policy_assignments, attributes below
Required:
    - claims_mapping_policy_id
    - service_principal_id
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
EOT

  type = map(object({
    claims_mapping_policy_id = string
    service_principal_id     = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.service_principal_claims_mapping_policy_assignments : (
        can(regex("^(/[^/]+/[^/]+)+$", v.claims_mapping_policy_id))
      )
    ])
    error_message = "must be a valid Azure resource ID"
  }
  validation {
    condition = alltrue([
      for k, v in var.service_principal_claims_mapping_policy_assignments : (
        can(regex("^(/[^/]+/[^/]+)+$", v.service_principal_id))
      )
    ])
    error_message = "must be a valid Azure resource ID"
  }
}

