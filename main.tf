data "github_collaborators" "collaborators_lookup" {
  for_each = var.collaborators_lookup

  owner       = each.value.owner
  repository  = each.value.repository
  affiliation = each.value.affiliation
  permission  = each.value.permission
}

