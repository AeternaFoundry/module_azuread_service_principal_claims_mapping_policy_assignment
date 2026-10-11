variable "service_principal_claims_mapping_policy_assignments" {
  description = <<EOT
Map of service_principal_claims_mapping_policy_assignments, attributes below
Required:
    - claims_mapping_policy_id
    - service_principal_id
EOT

  type = map(object({
    claims_mapping_policy_id = string
    service_principal_id     = string
  }))
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

