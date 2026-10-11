variable "cloud_security_compliance_frameworks" {
  description = <<EOT
Map of cloud_security_compliance_frameworks, attributes below
Required:
    - framework_id
    - location
Optional:
    - deletion_policy
    - description
    - display_name
    - organization
    - parent
    - cloud_control_details (block):
        - major_revision_id (required)
        - name (required)
        - parameters (optional, block):
            - name (required)
            - parameter_value (required, block):
                - bool_value (optional)
                - number_value (optional)
                - oneof_value (optional, block):
                    - name (optional)
                    - parameter_value (optional, block):
                        - bool_value (optional)
                        - number_value (optional)
                        - string_list_value (optional, block):
                            - values (required)
                        - string_value (optional)
                - string_list_value (optional, block):
                    - values (required)
                - string_value (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    framework_id    = string
    location        = string
    deletion_policy = optional(string)
    description     = optional(string)
    display_name    = optional(string)
    organization    = optional(string)
    parent          = optional(string)
    cloud_control_details = optional(list(object({
      major_revision_id = string
      name              = string
      parameters = optional(list(object({
        name = string
        parameter_value = object({
          bool_value   = optional(bool)
          number_value = optional(number)
          oneof_value = optional(object({
            name = optional(string)
            parameter_value = optional(object({
              bool_value   = optional(bool)
              number_value = optional(number)
              string_list_value = optional(object({
                values = list(string)
              }))
              string_value = optional(string)
            }))
          }))
          string_list_value = optional(object({
            values = list(string)
          }))
          string_value = optional(string)
        })
      })))
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

