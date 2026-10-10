output "lambda_code_signing_configs_id" {
  description = "Map of id values across all lambda_code_signing_configs, keyed the same as var.lambda_code_signing_configs"
  value       = { for k, v in aws_lambda_code_signing_config.lambda_code_signing_configs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "lambda_code_signing_configs_allowed_publishers" {
  description = "Map of allowed_publishers values across all lambda_code_signing_configs, keyed the same as var.lambda_code_signing_configs"
  value       = { for k, v in aws_lambda_code_signing_config.lambda_code_signing_configs : k => one(v.allowed_publishers) if v.allowed_publishers != null && length(v.allowed_publishers) > 0 }
}
output "lambda_code_signing_configs_arn" {
  description = "Map of arn values across all lambda_code_signing_configs, keyed the same as var.lambda_code_signing_configs"
  value       = { for k, v in aws_lambda_code_signing_config.lambda_code_signing_configs : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "lambda_code_signing_configs_config_id" {
  description = "Map of config_id values across all lambda_code_signing_configs, keyed the same as var.lambda_code_signing_configs"
  value       = { for k, v in aws_lambda_code_signing_config.lambda_code_signing_configs : k => v.config_id if v.config_id != null && length(v.config_id) > 0 }
}
output "lambda_code_signing_configs_description" {
  description = "Map of description values across all lambda_code_signing_configs, keyed the same as var.lambda_code_signing_configs"
  value       = { for k, v in aws_lambda_code_signing_config.lambda_code_signing_configs : k => v.description if v.description != null && length(v.description) > 0 }
}
output "lambda_code_signing_configs_last_modified" {
  description = "Map of last_modified values across all lambda_code_signing_configs, keyed the same as var.lambda_code_signing_configs"
  value       = { for k, v in aws_lambda_code_signing_config.lambda_code_signing_configs : k => v.last_modified if v.last_modified != null && length(v.last_modified) > 0 }
}
output "lambda_code_signing_configs_policies" {
  description = "Map of policies values across all lambda_code_signing_configs, keyed the same as var.lambda_code_signing_configs"
  value       = { for k, v in aws_lambda_code_signing_config.lambda_code_signing_configs : k => one(v.policies) if v.policies != null && length(v.policies) > 0 }
}
output "lambda_code_signing_configs_region" {
  description = "Map of region values across all lambda_code_signing_configs, keyed the same as var.lambda_code_signing_configs"
  value       = { for k, v in aws_lambda_code_signing_config.lambda_code_signing_configs : k => v.region if v.region != null && length(v.region) > 0 }
}
output "lambda_code_signing_configs_tags" {
  description = "Map of tags values across all lambda_code_signing_configs, keyed the same as var.lambda_code_signing_configs"
  value       = { for k, v in aws_lambda_code_signing_config.lambda_code_signing_configs : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "lambda_code_signing_configs_tags_all" {
  description = "Map of tags_all values across all lambda_code_signing_configs, keyed the same as var.lambda_code_signing_configs"
  value       = { for k, v in aws_lambda_code_signing_config.lambda_code_signing_configs : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

