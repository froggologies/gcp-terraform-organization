locals {
  IAM = {
    "serviceAccount:evros-oikolos@master-ecbc70.iam.gserviceaccount.com" = [
      "roles/resourcemanager.folderCreator",
      "roles/iam.securityAdmin"
    ]
    "user:google@fajarmaftuhfadli.com" = [
      "roles/resourcemanager.organizationAdmin",
      "roles/orgpolicy.policyAdmin",
      "roles/resourcemanager.projectCreator"
    ]
  }
}

module "google_organization_iam_member" {
  for_each = local.IAM
  source   = "./modules/google_organization_iam_member"
  org_id   = var.org_id
  member   = each.key
  roles    = each.value
}
