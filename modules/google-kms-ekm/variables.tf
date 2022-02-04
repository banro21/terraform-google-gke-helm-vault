variable "region" {
  type = string
}

variable "credentials_file" {
  type = string
}

variable "project_id" {
  type = string
}

variable "key_ring" {
  description = "Cloud KMS key ring name to create"
  default     = "test"
}

variable "crypto_key" {
  default     = "vault-test"
  description = "Crypto key name to create under the key ring"
}

variable "keyring_location" {
  default = "global"
}

variable "service_account_iam_roles" {
  type = list(string)
  default = [
    "roles/logging.logWriter",
    "roles/monitoring.metricWriter",
    "roles/monitoring.viewer",
    "roles/iam.serviceAccountKeyAdmin",
    "roles/cloudkms.cryptoKeyEncrypterDecrypter"
  ]
  description = "List of IAM roles to assign to the service account."
}