output "collaborators_lookup_id" {
  description = "Map of id values across all collaborators_lookup, keyed the same as var.collaborators_lookup"
  value       = { for k, v in data.github_collaborators.collaborators_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "collaborators_lookup_affiliation" {
  description = "Map of affiliation values across all collaborators_lookup, keyed the same as var.collaborators_lookup"
  value       = { for k, v in data.github_collaborators.collaborators_lookup : k => v.affiliation if v.affiliation != null && length(v.affiliation) > 0 }
}
output "collaborators_lookup_collaborator" {
  description = "Map of collaborator values across all collaborators_lookup, keyed the same as var.collaborators_lookup"
  value       = { for k, v in data.github_collaborators.collaborators_lookup : k => v.collaborator if v.collaborator != null && length(v.collaborator) > 0 }
}
output "collaborators_lookup_owner" {
  description = "Map of owner values across all collaborators_lookup, keyed the same as var.collaborators_lookup"
  value       = { for k, v in data.github_collaborators.collaborators_lookup : k => v.owner if v.owner != null && length(v.owner) > 0 }
}
output "collaborators_lookup_permission" {
  description = "Map of permission values across all collaborators_lookup, keyed the same as var.collaborators_lookup"
  value       = { for k, v in data.github_collaborators.collaborators_lookup : k => v.permission if v.permission != null && length(v.permission) > 0 }
}
output "collaborators_lookup_repository" {
  description = "Map of repository values across all collaborators_lookup, keyed the same as var.collaborators_lookup"
  value       = { for k, v in data.github_collaborators.collaborators_lookup : k => v.repository if v.repository != null && length(v.repository) > 0 }
}

