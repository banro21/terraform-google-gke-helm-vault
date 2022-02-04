resource "kubernetes_namespace" "vault" {
  metadata {
    name = "vault"
  }
  depends_on = [var.cluster_endpoint, var.node_pool]
}

resource "kubernetes_secret" "vault_local_tls" {
  metadata {
    name      = "vault-internal-tls"
    namespace = kubernetes_namespace.vault.metadata.0.name
  }

  data = {
    "vault-local.ca"   = var.vault_internal_tls_ca
    "vault-local.cert" = var.vault_internal_tls_cert
    "vault-local.key"  = var.vault_internal_tls_key
  }

  type = "Opaque"
}
resource "kubernetes_secret" "vault-license" {
 # host = var.cluster_endpoint
  metadata {
    name      = "vault-ent-license"
    namespace = kubernetes_namespace.vault.metadata.0.name
  }
  data = {
    "license"  = file(var.vault_license)
  }
  type = "Opaque"
}