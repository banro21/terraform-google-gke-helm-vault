# Create Service Account for Vault to fetch unseal keys
resource "google_service_account" "vault_kms_service_account" {
  account_id   = "vault-gcpkms-new"
  display_name = "Vault KMS for auto-unseal"
  project      = var.project_id
}


# Add the service account to the Keyring
resource "google_kms_key_ring_iam_binding" "vault_iam_kms_binding" {
  key_ring_id = "${var.project_id}/${var.keyring_location}/${var.key_ring}"
  role        = "roles/owner"

  members = [
    "serviceAccount:${google_service_account.vault_kms_service_account.email}",
  ]
}

# Grant service account access to the key
resource "google_project_iam_member" "service-account-iam-memberships" {
  count   = length(var.service_account_iam_roles)
  project = var.project_id
  role    = element(var.service_account_iam_roles, count.index)
  member  = "serviceAccount:${google_service_account.vault_kms_service_account.email}"
}