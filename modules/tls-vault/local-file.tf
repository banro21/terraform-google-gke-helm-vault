locals {
  full_cert = "${tls_locally_signed_cert.cert.cert_pem}\n${tls_self_signed_cert.ca.cert_pem}"
}

resource "local_file" "tls-certificate" {
  filename = "./tls-vault/certificate.cert"
  content  = local.full_cert
}

resource "local_file" "tls-key" {
  filename = "./tls-vault/private.key"
  content  = tls_private_key.cert.private_key_pem
}

resource "local_file" "ca-tls-certificate" {
  filename = "./tls-vault/ca-certificate.cert"
  content  = tls_self_signed_cert.ca.cert_pem
}

resource "local_file" "ca-tls-key" {
  filename = "./tls-vault/ca-private.key"
  content  = tls_private_key.ca.private_key_pem
}

resource "kubernetes_secret" "vault_acme_cert" {
 # host = var.cluster_endpoint
  metadata {
    name      = var.cert_secret_name
    namespace = var.vault_namespace
  }

  data = {
    "tls.ca"  = tls_self_signed_cert.ca.cert_pem
    "tls.crt" = local.full_cert
    "tls.key" = tls_private_key.cert.private_key_pem
  }

  type = "Opaque"
}
