variable "hostname" {
  description = "The full hostname that will be used. `vault.example.com`"
}

variable "certificate_duration" {
  description = "Length in hours for the certificate and authority to be valid. Defaults to 6 months."
  default     = 24 * 30 * 6
}

variable "organization_name" {
  type = string
}

variable "common_name" {
  type = string
}

variable "country" {
  type = string
}

variable "project_id" {
  type = string
}

variable "cluster_endpoint" {
}

variable "cluster_cert" {
}

variable "credentials_file" {
}

variable "vault_namespace" {
  type = string
}

variable "cert_secret_name" {
  type        = string
  description = "The name to use in k8s metadata for the k8s secret containing output cert data"
}