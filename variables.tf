variable "golden_gate_pipelines" {
  description = <<EOT
Map of golden_gate_pipelines, attributes below
Required:
    - compartment_id
    - display_name
    - license_model
    - recipe_type
    - source_connection_details (block):
        - connection_id (required)
    - target_connection_details (block):
        - connection_id (required)
Optional:
    - cpu_core_count
    - defined_tags
    - description
    - freeform_tags
    - is_auto_scaling_enabled
    - subnet_id
    - locks (block):
        - message (optional)
        - related_resource_id (optional)
        - time_created (optional)
        - type (required)
    - process_options (block):
        - initial_data_load (required, block):
            - action_on_existing_table (optional)
            - adb_wallet_path (optional)
            - bucket (optional)
            - initial_load_type (optional)
            - is_initial_load (required)
            - namespace (optional)
            - source_wallet_path (optional)
            - target_wallet_path (optional)
        - replicate_schema_change (required, block):
            - action_on_ddl_error (optional)
            - action_on_dml_error (optional)
            - can_replicate_schema_change (required)
        - should_restart_on_failure (required)
        - start_using_default_mapping (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id          = string
    display_name            = string
    license_model           = string
    recipe_type             = string
    cpu_core_count          = optional(number)
    defined_tags            = optional(map(string))
    description             = optional(string)
    freeform_tags           = optional(map(string))
    is_auto_scaling_enabled = optional(bool)
    subnet_id               = optional(string)
    source_connection_details = object({
      connection_id = string
    })
    target_connection_details = object({
      connection_id = string
    })
    locks = optional(list(object({
      message             = optional(string)
      related_resource_id = optional(string)
      time_created        = optional(string)
      type                = string
    })))
    process_options = optional(object({
      initial_data_load = object({
        action_on_existing_table = optional(string)
        adb_wallet_path          = optional(string)
        bucket                   = optional(string)
        initial_load_type        = optional(string)
        is_initial_load          = string
        namespace                = optional(string)
        source_wallet_path       = optional(string)
        target_wallet_path       = optional(string)
      })
      replicate_schema_change = object({
        action_on_ddl_error         = optional(string)
        action_on_dml_error         = optional(string)
        can_replicate_schema_change = string
      })
      should_restart_on_failure   = string
      start_using_default_mapping = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.golden_gate_pipelines : (
        contains([for v in ["ZERO_ETL"] : lower(v)], lower(v.recipe_type))
      )
    ])
    error_message = "must be one of: \"ZERO_ETL\""
  }
}

