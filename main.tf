resource "google_cloud_security_compliance_framework" "cloud_security_compliance_frameworks" {
  for_each = var.cloud_security_compliance_frameworks

  framework_id    = each.value.framework_id
  location        = each.value.location
  deletion_policy = each.value.deletion_policy
  description     = each.value.description
  display_name    = each.value.display_name
  organization    = each.value.organization
  parent          = each.value.parent

  dynamic "cloud_control_details" {
    for_each = each.value.cloud_control_details != null ? each.value.cloud_control_details : []
    content {
      major_revision_id = cloud_control_details.value.major_revision_id
      name              = cloud_control_details.value.name
      dynamic "parameters" {
        for_each = cloud_control_details.value.parameters != null ? cloud_control_details.value.parameters : []
        content {
          name = parameters.value.name
          parameter_value {
            bool_value   = parameters.value.parameter_value.bool_value
            number_value = parameters.value.parameter_value.number_value
            dynamic "oneof_value" {
              for_each = parameters.value.parameter_value.oneof_value != null ? [parameters.value.parameter_value.oneof_value] : []
              content {
                name = oneof_value.value.name
                dynamic "parameter_value" {
                  for_each = oneof_value.value.parameter_value != null ? [oneof_value.value.parameter_value] : []
                  content {
                    bool_value   = parameter_value.value.bool_value
                    number_value = parameter_value.value.number_value
                    dynamic "string_list_value" {
                      for_each = parameter_value.value.string_list_value != null ? [parameter_value.value.string_list_value] : []
                      content {
                        values = string_list_value.value.values
                      }
                    }
                    string_value = parameter_value.value.string_value
                  }
                }
              }
            }
            dynamic "string_list_value" {
              for_each = parameters.value.parameter_value.string_list_value != null ? [parameters.value.parameter_value.string_list_value] : []
              content {
                values = string_list_value.value.values
              }
            }
            string_value = parameters.value.parameter_value.string_value
          }
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

