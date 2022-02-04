#-------------------------------------------------------------------------------------------
# Required:
#    * gcloud-project - set it to your GCP project name to provision cloud resources
#    * account_file_path - the full path to your Cloud IAM service account file location
#-------------------------------------------------------------------------------------------
#gcloud-project = "dev-hashi"
#account_file_path = "/Users/robansal/Downloads/dev-hashi-9f3752fb2150.json"


#----------------------------------------------------------------------------------------------
# Optional: Un-comment and set the variable(s) to your desired value to overwrite the default.
#----------------------------------------------------------------------------------------------
#gcloud-region = "us-west3"
#gcloud-zone = "us-west3-c"
#key_ring = "ekm-dev-hashi"
#crypto_key = "dev-hashi-123"
#keyring_location = "us-west2"

credentials_file          = "/Users/robansal/Downloads/dev-hashi-94a62c117af9.json"
license_file              = "/Users/robansal/Downloads/vault.hclic"
project_id                = "dev-hashi"
cluster_name              = "vault"
region                    = "us-west3"
cluster_zone              = "us-west3-c"
num_vault_pods            = 3
cert_secret_name          = "vault-acme-tls"
vault_hostname            = "aribansal.com"
cert_organization_name   = "Ari test, Inc."
cert_common_name          = "aribansal.com"
cert_country              = "United States"
public_cert_email_address = "admin@aribansal.com"
vault_version             = "1.9.2-ent"
key_ring = "ekm-dev-hashi"
crypto_key = "dev-hashi-123"
keyring_location = "us-west2"
