resource "oci_golden_gate_pipeline" "golden_gate_pipelines" {
  for_each = var.golden_gate_pipelines

  compartment_id          = each.value.compartment_id
  display_name            = each.value.display_name
  license_model           = each.value.license_model
  recipe_type             = each.value.recipe_type
  cpu_core_count          = each.value.cpu_core_count
  defined_tags            = each.value.defined_tags
  description             = each.value.description
  freeform_tags           = each.value.freeform_tags
  is_auto_scaling_enabled = each.value.is_auto_scaling_enabled
  subnet_id               = each.value.subnet_id

  source_connection_details {
    connection_id = each.value.source_connection_details.connection_id
  }

  target_connection_details {
    connection_id = each.value.target_connection_details.connection_id
  }

  dynamic "locks" {
    for_each = each.value.locks != null ? each.value.locks : []
    content {
      message             = locks.value.message
      related_resource_id = locks.value.related_resource_id
      time_created        = locks.value.time_created
      type                = locks.value.type
    }
  }

  dynamic "process_options" {
    for_each = each.value.process_options != null ? [each.value.process_options] : []
    content {
      initial_data_load {
        action_on_existing_table = process_options.value.initial_data_load.action_on_existing_table
        adb_wallet_path          = process_options.value.initial_data_load.adb_wallet_path
        bucket                   = process_options.value.initial_data_load.bucket
        initial_load_type        = process_options.value.initial_data_load.initial_load_type
        is_initial_load          = process_options.value.initial_data_load.is_initial_load
        namespace                = process_options.value.initial_data_load.namespace
        source_wallet_path       = process_options.value.initial_data_load.source_wallet_path
        target_wallet_path       = process_options.value.initial_data_load.target_wallet_path
      }
      replicate_schema_change {
        action_on_ddl_error         = process_options.value.replicate_schema_change.action_on_ddl_error
        action_on_dml_error         = process_options.value.replicate_schema_change.action_on_dml_error
        can_replicate_schema_change = process_options.value.replicate_schema_change.can_replicate_schema_change
      }
      should_restart_on_failure   = process_options.value.should_restart_on_failure
      start_using_default_mapping = process_options.value.start_using_default_mapping
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

