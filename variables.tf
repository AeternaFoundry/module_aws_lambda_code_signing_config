variable "lambda_code_signing_configs" {
  description = <<EOT
Map of lambda_code_signing_configs, attributes below
Required:
    - allowed_publishers (block):
        - signing_profile_version_arns (required)
Optional:
    - description
    - region
    - tags
    - tags_all
    - policies (block):
        - untrusted_artifact_on_deployment (required)
EOT

  type = map(object({
    description = optional(string)
    region      = optional(string)
    tags        = optional(map(string))
    tags_all    = optional(map(string))
    allowed_publishers = object({
      signing_profile_version_arns = set(string)
    })
    policies = optional(object({
      untrusted_artifact_on_deployment = string
    }))
  }))
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

