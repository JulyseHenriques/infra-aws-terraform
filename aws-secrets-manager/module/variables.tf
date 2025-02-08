variable "environment" {
  description = "The environment (e.g., dev, staging, prod)"
  type        = string
}

variable "aws_region" {
  description = "The AWS region where the bucket will be created."
  type          = string  
}

variable "secret_name" {
  description   = "Friendly name of the new secret. The secret name can consist of uppercase letters, lowercase letters, digits, and any of the following characters: /_+=.@-"
  type          = string  
}

variable "secret_description" {
  description   = "Description of the secret."
  type          = string
}

variable "encrypted_secret" {
  description   = "Encrypted and Base64 value of the secret."
  type          = string
}

variable "kms_key_id" {
  description   = "ARN or Id of the AWS KMS key to be used to encrypt the secret values in the versions stored in this secret."
  type          = string
}

variable "recovery_window_in_days" {
  description   = "Number of days that AWS Secrets Manager waits before it can delete the secret. This value can be 0 to force deletion without recovery or range from 7 to 30 days."
  type          = number
  default       = 30
}

variable "custom_tags" {
  description   = "Map of custom tags to assign to the bucket."
  type          = map(string)
  default       = { } 
}
