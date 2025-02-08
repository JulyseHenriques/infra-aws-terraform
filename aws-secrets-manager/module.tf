module "secrets_manager_module" {
  source              = "./module"
  environment         = "dev"
  aws_region          = "us-east-1"
  secret_name         = "my_secret_name"
  secret_description  = "My secret description"
  kms_key_id          = "arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012"
  encrypted_secret    = "encrypted base64 secret value"
}