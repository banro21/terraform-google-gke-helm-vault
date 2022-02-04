output "unseal_keyring_name" {
  value = var.key_ring
}

output "unseal_key_name" {
  value = var.crypto_key
}

output "service_account" {
  value = google_service_account.vault_kms_service_account.email
}