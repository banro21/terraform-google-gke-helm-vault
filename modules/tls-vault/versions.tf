terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
    tls = {
      source = "hashicorp/tls"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
    }
  }
  required_version = ">= 0.14"
}
