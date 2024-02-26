resource "google_organization_iam_member" "iam_member" {
  for_each = toset(var.roles)

  org_id = var.org_id
  role   = each.value
  member = var.member
}
