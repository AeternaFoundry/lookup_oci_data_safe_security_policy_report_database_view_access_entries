variable "data_safe_security_policy_report_database_view_access_entries_lookup" {
  description = <<EOT
Map of data_safe_security_policy_report_database_view_access_entries_lookup, attributes below
Required:
    - security_policy_report_id
Optional:
    - scim_query
    - target_id
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    security_policy_report_id = string
    scim_query                = optional(string)
    target_id                 = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

