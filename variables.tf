variable "collaborators_lookup" {
  description = <<EOT
Map of collaborators_lookup, attributes below
Required:
    - owner
    - repository
Optional:
    - affiliation
    - permission
EOT

  type = map(object({
    owner       = string
    repository  = string
    affiliation = optional(string)
    permission  = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.collaborators_lookup : (
        v.affiliation == null || (contains(["all", "direct", "outside"], v.affiliation))
      )
    ])
    error_message = "must be one of: all, direct, outside"
  }
  validation {
    condition = alltrue([
      for k, v in var.collaborators_lookup : (
        v.permission == null || (contains(["pull", "triage", "push", "maintain", "admin"], v.permission))
      )
    ])
    error_message = "must be one of: pull, triage, push, maintain, admin"
  }
}

