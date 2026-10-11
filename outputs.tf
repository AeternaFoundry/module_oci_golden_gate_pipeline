output "golden_gate_pipelines_id" {
  description = "Map of id values across all golden_gate_pipelines, keyed the same as var.golden_gate_pipelines except keys with no id are omitted"
  value       = { for k, v in oci_golden_gate_pipeline.golden_gate_pipelines : k => v.id if v.id != null && length(v.id) > 0 }
}
output "golden_gate_pipelines_compartment_id" {
  description = "Map of compartment_id values across all golden_gate_pipelines, keyed the same as var.golden_gate_pipelines except keys with no compartment_id are omitted"
  value       = { for k, v in oci_golden_gate_pipeline.golden_gate_pipelines : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "golden_gate_pipelines_cpu_core_count" {
  description = "Map of cpu_core_count values across all golden_gate_pipelines, keyed the same as var.golden_gate_pipelines except keys with no cpu_core_count are omitted"
  value       = { for k, v in oci_golden_gate_pipeline.golden_gate_pipelines : k => v.cpu_core_count if v.cpu_core_count != null }
}
output "golden_gate_pipelines_defined_tags" {
  description = "Map of defined_tags values across all golden_gate_pipelines, keyed the same as var.golden_gate_pipelines except keys with no defined_tags are omitted"
  value       = { for k, v in oci_golden_gate_pipeline.golden_gate_pipelines : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "golden_gate_pipelines_description" {
  description = "Map of description values across all golden_gate_pipelines, keyed the same as var.golden_gate_pipelines except keys with no description are omitted"
  value       = { for k, v in oci_golden_gate_pipeline.golden_gate_pipelines : k => v.description if v.description != null && length(v.description) > 0 }
}
output "golden_gate_pipelines_display_name" {
  description = "Map of display_name values across all golden_gate_pipelines, keyed the same as var.golden_gate_pipelines except keys with no display_name are omitted"
  value       = { for k, v in oci_golden_gate_pipeline.golden_gate_pipelines : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "golden_gate_pipelines_freeform_tags" {
  description = "Map of freeform_tags values across all golden_gate_pipelines, keyed the same as var.golden_gate_pipelines except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_golden_gate_pipeline.golden_gate_pipelines : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "golden_gate_pipelines_ingress_ips" {
  description = "Map of ingress_ips values across all golden_gate_pipelines, keyed the same as var.golden_gate_pipelines except keys with no ingress_ips are omitted"
  value       = { for k, v in oci_golden_gate_pipeline.golden_gate_pipelines : k => v.ingress_ips if v.ingress_ips != null && length(v.ingress_ips) > 0 }
}
output "golden_gate_pipelines_is_auto_scaling_enabled" {
  description = "Map of is_auto_scaling_enabled values across all golden_gate_pipelines, keyed the same as var.golden_gate_pipelines except keys with no is_auto_scaling_enabled are omitted"
  value       = { for k, v in oci_golden_gate_pipeline.golden_gate_pipelines : k => v.is_auto_scaling_enabled if v.is_auto_scaling_enabled != null }
}
output "golden_gate_pipelines_license_model" {
  description = "Map of license_model values across all golden_gate_pipelines, keyed the same as var.golden_gate_pipelines except keys with no license_model are omitted"
  value       = { for k, v in oci_golden_gate_pipeline.golden_gate_pipelines : k => v.license_model if v.license_model != null && length(v.license_model) > 0 }
}
output "golden_gate_pipelines_lifecycle_details" {
  description = "Map of lifecycle_details values across all golden_gate_pipelines, keyed the same as var.golden_gate_pipelines except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_golden_gate_pipeline.golden_gate_pipelines : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "golden_gate_pipelines_lifecycle_sub_state" {
  description = "Map of lifecycle_sub_state values across all golden_gate_pipelines, keyed the same as var.golden_gate_pipelines except keys with no lifecycle_sub_state are omitted"
  value       = { for k, v in oci_golden_gate_pipeline.golden_gate_pipelines : k => v.lifecycle_sub_state if v.lifecycle_sub_state != null && length(v.lifecycle_sub_state) > 0 }
}
output "golden_gate_pipelines_locks" {
  description = "Map of locks values across all golden_gate_pipelines, keyed the same as var.golden_gate_pipelines except keys with no locks are omitted"
  value       = { for k, v in oci_golden_gate_pipeline.golden_gate_pipelines : k => v.locks if v.locks != null && length(v.locks) > 0 }
}
output "golden_gate_pipelines_mapping_rules" {
  description = "Map of mapping_rules values across all golden_gate_pipelines, keyed the same as var.golden_gate_pipelines except keys with no mapping_rules are omitted"
  value       = { for k, v in oci_golden_gate_pipeline.golden_gate_pipelines : k => v.mapping_rules if v.mapping_rules != null && length(v.mapping_rules) > 0 }
}
output "golden_gate_pipelines_pipeline_diagnostic_data" {
  description = "Map of pipeline_diagnostic_data values across all golden_gate_pipelines, keyed the same as var.golden_gate_pipelines except keys with no pipeline_diagnostic_data are omitted"
  value       = { for k, v in oci_golden_gate_pipeline.golden_gate_pipelines : k => v.pipeline_diagnostic_data if v.pipeline_diagnostic_data != null && length(v.pipeline_diagnostic_data) > 0 }
}
output "golden_gate_pipelines_process_options" {
  description = "Map of process_options values across all golden_gate_pipelines, keyed the same as var.golden_gate_pipelines except keys with no process_options are omitted"
  value       = { for k, v in oci_golden_gate_pipeline.golden_gate_pipelines : k => one(v.process_options) if v.process_options != null && length(v.process_options) > 0 }
}
output "golden_gate_pipelines_recipe_type" {
  description = "Map of recipe_type values across all golden_gate_pipelines, keyed the same as var.golden_gate_pipelines except keys with no recipe_type are omitted"
  value       = { for k, v in oci_golden_gate_pipeline.golden_gate_pipelines : k => v.recipe_type if v.recipe_type != null && length(v.recipe_type) > 0 }
}
output "golden_gate_pipelines_source_connection_details" {
  description = "Map of source_connection_details values across all golden_gate_pipelines, keyed the same as var.golden_gate_pipelines except keys with no source_connection_details are omitted"
  value       = { for k, v in oci_golden_gate_pipeline.golden_gate_pipelines : k => one(v.source_connection_details) if v.source_connection_details != null && length(v.source_connection_details) > 0 }
}
output "golden_gate_pipelines_state" {
  description = "Map of state values across all golden_gate_pipelines, keyed the same as var.golden_gate_pipelines except keys with no state are omitted"
  value       = { for k, v in oci_golden_gate_pipeline.golden_gate_pipelines : k => v.state if v.state != null && length(v.state) > 0 }
}
output "golden_gate_pipelines_subnet_id" {
  description = "Map of subnet_id values across all golden_gate_pipelines, keyed the same as var.golden_gate_pipelines except keys with no subnet_id are omitted"
  value       = { for k, v in oci_golden_gate_pipeline.golden_gate_pipelines : k => v.subnet_id if v.subnet_id != null && length(v.subnet_id) > 0 }
}
output "golden_gate_pipelines_system_tags" {
  description = "Map of system_tags values across all golden_gate_pipelines, keyed the same as var.golden_gate_pipelines except keys with no system_tags are omitted"
  value       = { for k, v in oci_golden_gate_pipeline.golden_gate_pipelines : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "golden_gate_pipelines_target_connection_details" {
  description = "Map of target_connection_details values across all golden_gate_pipelines, keyed the same as var.golden_gate_pipelines except keys with no target_connection_details are omitted"
  value       = { for k, v in oci_golden_gate_pipeline.golden_gate_pipelines : k => one(v.target_connection_details) if v.target_connection_details != null && length(v.target_connection_details) > 0 }
}
output "golden_gate_pipelines_time_created" {
  description = "Map of time_created values across all golden_gate_pipelines, keyed the same as var.golden_gate_pipelines except keys with no time_created are omitted"
  value       = { for k, v in oci_golden_gate_pipeline.golden_gate_pipelines : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "golden_gate_pipelines_time_last_recorded" {
  description = "Map of time_last_recorded values across all golden_gate_pipelines, keyed the same as var.golden_gate_pipelines except keys with no time_last_recorded are omitted"
  value       = { for k, v in oci_golden_gate_pipeline.golden_gate_pipelines : k => v.time_last_recorded if v.time_last_recorded != null && length(v.time_last_recorded) > 0 }
}
output "golden_gate_pipelines_time_updated" {
  description = "Map of time_updated values across all golden_gate_pipelines, keyed the same as var.golden_gate_pipelines except keys with no time_updated are omitted"
  value       = { for k, v in oci_golden_gate_pipeline.golden_gate_pipelines : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}

