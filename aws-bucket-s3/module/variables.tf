variable "environment" {
  description = "The environment (e.g., dev, staging, prod)"
  type        = string
}

variable "aws_region" {
  description = "The AWS region where the bucket will be created."
  type          = string  
}

variable "bucket_name" {
  description   = "Name of the bucket. If omitted, Terraform will assign a random, unique name."
  type          = string  
}

variable "bucket_destroy" {
  description   = "Indicates all objects (including any locked objects) should be deleted from the bucket when the bucket is destroyed so that the bucket can be destroyed without error."
  type          = bool
  default       = false
}

variable "bucket_acl" {
  description   = "The canned ACL to apply. Valid values are private, public-read, public-read-write, aws-exec-read, authenticated-read, and log-delivery-write."
  type          = string
  default       = "private"
}

variable "object_lock_enabled" {
  description   = "Indicates whether this bucket has an Object Lock configuration enabled."
  type          = bool
  default       = false
}

variable "custom_tags" {
  description   = "Map of custom tags to assign to the bucket."
  type          = map(string)
  default       = { } 
}
