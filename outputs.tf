output "cloud_security_compliance_frameworks_id" {
  description = "Map of id values across all cloud_security_compliance_frameworks, keyed the same as var.cloud_security_compliance_frameworks except keys with no id are omitted"
  value       = { for k, v in google_cloud_security_compliance_framework.cloud_security_compliance_frameworks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloud_security_compliance_frameworks_category" {
  description = "Map of category values across all cloud_security_compliance_frameworks, keyed the same as var.cloud_security_compliance_frameworks except keys with no category are omitted"
  value       = { for k, v in google_cloud_security_compliance_framework.cloud_security_compliance_frameworks : k => v.category if v.category != null && length(v.category) > 0 }
}
output "cloud_security_compliance_frameworks_cloud_control_details" {
  description = "Map of cloud_control_details values across all cloud_security_compliance_frameworks, keyed the same as var.cloud_security_compliance_frameworks except keys with no cloud_control_details are omitted"
  value       = { for k, v in google_cloud_security_compliance_framework.cloud_security_compliance_frameworks : k => v.cloud_control_details if v.cloud_control_details != null && length(v.cloud_control_details) > 0 }
}
output "cloud_security_compliance_frameworks_deletion_policy" {
  description = "Map of deletion_policy values across all cloud_security_compliance_frameworks, keyed the same as var.cloud_security_compliance_frameworks except keys with no deletion_policy are omitted"
  value       = { for k, v in google_cloud_security_compliance_framework.cloud_security_compliance_frameworks : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "cloud_security_compliance_frameworks_description" {
  description = "Map of description values across all cloud_security_compliance_frameworks, keyed the same as var.cloud_security_compliance_frameworks except keys with no description are omitted"
  value       = { for k, v in google_cloud_security_compliance_framework.cloud_security_compliance_frameworks : k => v.description if v.description != null && length(v.description) > 0 }
}
output "cloud_security_compliance_frameworks_display_name" {
  description = "Map of display_name values across all cloud_security_compliance_frameworks, keyed the same as var.cloud_security_compliance_frameworks except keys with no display_name are omitted"
  value       = { for k, v in google_cloud_security_compliance_framework.cloud_security_compliance_frameworks : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "cloud_security_compliance_frameworks_framework_id" {
  description = "Map of framework_id values across all cloud_security_compliance_frameworks, keyed the same as var.cloud_security_compliance_frameworks except keys with no framework_id are omitted"
  value       = { for k, v in google_cloud_security_compliance_framework.cloud_security_compliance_frameworks : k => v.framework_id if v.framework_id != null && length(v.framework_id) > 0 }
}
output "cloud_security_compliance_frameworks_location" {
  description = "Map of location values across all cloud_security_compliance_frameworks, keyed the same as var.cloud_security_compliance_frameworks except keys with no location are omitted"
  value       = { for k, v in google_cloud_security_compliance_framework.cloud_security_compliance_frameworks : k => v.location if v.location != null && length(v.location) > 0 }
}
output "cloud_security_compliance_frameworks_major_revision_id" {
  description = "Map of major_revision_id values across all cloud_security_compliance_frameworks, keyed the same as var.cloud_security_compliance_frameworks except keys with no major_revision_id are omitted"
  value       = { for k, v in google_cloud_security_compliance_framework.cloud_security_compliance_frameworks : k => v.major_revision_id if v.major_revision_id != null && length(v.major_revision_id) > 0 }
}
output "cloud_security_compliance_frameworks_name" {
  description = "Map of name values across all cloud_security_compliance_frameworks, keyed the same as var.cloud_security_compliance_frameworks except keys with no name are omitted"
  value       = { for k, v in google_cloud_security_compliance_framework.cloud_security_compliance_frameworks : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cloud_security_compliance_frameworks_organization" {
  description = "Map of organization values across all cloud_security_compliance_frameworks, keyed the same as var.cloud_security_compliance_frameworks except keys with no organization are omitted"
  value       = { for k, v in google_cloud_security_compliance_framework.cloud_security_compliance_frameworks : k => v.organization if v.organization != null && length(v.organization) > 0 }
}
output "cloud_security_compliance_frameworks_parent" {
  description = "Map of parent values across all cloud_security_compliance_frameworks, keyed the same as var.cloud_security_compliance_frameworks except keys with no parent are omitted"
  value       = { for k, v in google_cloud_security_compliance_framework.cloud_security_compliance_frameworks : k => v.parent if v.parent != null && length(v.parent) > 0 }
}
output "cloud_security_compliance_frameworks_supported_cloud_providers" {
  description = "Map of supported_cloud_providers values across all cloud_security_compliance_frameworks, keyed the same as var.cloud_security_compliance_frameworks except keys with no supported_cloud_providers are omitted"
  value       = { for k, v in google_cloud_security_compliance_framework.cloud_security_compliance_frameworks : k => v.supported_cloud_providers if v.supported_cloud_providers != null && length(v.supported_cloud_providers) > 0 }
}
output "cloud_security_compliance_frameworks_supported_enforcement_modes" {
  description = "Map of supported_enforcement_modes values across all cloud_security_compliance_frameworks, keyed the same as var.cloud_security_compliance_frameworks except keys with no supported_enforcement_modes are omitted"
  value       = { for k, v in google_cloud_security_compliance_framework.cloud_security_compliance_frameworks : k => v.supported_enforcement_modes if v.supported_enforcement_modes != null && length(v.supported_enforcement_modes) > 0 }
}
output "cloud_security_compliance_frameworks_supported_target_resource_types" {
  description = "Map of supported_target_resource_types values across all cloud_security_compliance_frameworks, keyed the same as var.cloud_security_compliance_frameworks except keys with no supported_target_resource_types are omitted"
  value       = { for k, v in google_cloud_security_compliance_framework.cloud_security_compliance_frameworks : k => v.supported_target_resource_types if v.supported_target_resource_types != null && length(v.supported_target_resource_types) > 0 }
}
output "cloud_security_compliance_frameworks_type" {
  description = "Map of type values across all cloud_security_compliance_frameworks, keyed the same as var.cloud_security_compliance_frameworks except keys with no type are omitted"
  value       = { for k, v in google_cloud_security_compliance_framework.cloud_security_compliance_frameworks : k => v.type if v.type != null && length(v.type) > 0 }
}

