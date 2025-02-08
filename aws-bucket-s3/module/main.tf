## For more info: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket

resource "aws_s3_bucket" "this" {
  bucket              = var.bucket_name
  force_destroy       = var.bucket_destroy
  object_lock_enabled = var.object_lock_enabled
  tags                = var.custom_tags
}

resource "aws_s3_bucket_acl" "this" {
  depends_on  = [ aws_s3_bucket.this ]
  bucket      = aws_s3_bucket.this.id
  acl         = var.bucket_acl
}

data "aws_iam_policy_document" "policy_doc" {
  depends_on  = [ aws_s3_bucket.this ]
  
  statement {
    sid         = "1"
    actions     = [ "s3:*" ]
    resources   = [ aws_s3_bucket.this.arn, "${aws_s3_bucket.this.arn}/*" ]
  }
}

resource "aws_s3_bucket_policy" "this" {
  depends_on  = [ aws_s3_bucket_acl.this, data.aws_iam_policy_document.policy_doc ]
  bucket      = aws_s3_bucket.this.id
  policy      = data.aws_iam_policy_document.policy_doc.json
}
