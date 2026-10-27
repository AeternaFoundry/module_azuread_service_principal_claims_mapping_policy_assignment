output "service_principal_claims_mapping_policy_assignments_id" {
  description = "Map of id values across all service_principal_claims_mapping_policy_assignments, keyed the same as var.service_principal_claims_mapping_policy_assignments"
  value       = { for k, v in azuread_service_principal_claims_mapping_policy_assignment.service_principal_claims_mapping_policy_assignments : k => v.id }
}
output "service_principal_claims_mapping_policy_assignments_claims_mapping_policy_id" {
  description = "Map of claims_mapping_policy_id values across all service_principal_claims_mapping_policy_assignments, keyed the same as var.service_principal_claims_mapping_policy_assignments"
  value       = { for k, v in azuread_service_principal_claims_mapping_policy_assignment.service_principal_claims_mapping_policy_assignments : k => v.claims_mapping_policy_id }
}
output "service_principal_claims_mapping_policy_assignments_service_principal_id" {
  description = "Map of service_principal_id values across all service_principal_claims_mapping_policy_assignments, keyed the same as var.service_principal_claims_mapping_policy_assignments"
  value       = { for k, v in azuread_service_principal_claims_mapping_policy_assignment.service_principal_claims_mapping_policy_assignments : k => v.service_principal_id }
}

