output "bucket_id" {
    description = "Name of the bucket."
    value = module.s3_bucket_module.bucket_id
}

output "bucket_arn" {
    description = "ARN of the bucket. Will be of format arn:aws:s3:::bucketname."
    value = module.s3_bucket_module.bucket_arn
}

output "bucket_domain_name" {
    description = "Bucket domain name. Will be of format bucketname.s3.amazonaws.com."
    value = module.s3_bucket_module.bucket_domain_name
}
