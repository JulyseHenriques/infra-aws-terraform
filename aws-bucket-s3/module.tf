module "s3_bucket_module" {
  source        = "./module"
  bucket_name   = "my-unique-bucket-name"
  aws_region    = "us-east-1"
  environment   = "dev"
}