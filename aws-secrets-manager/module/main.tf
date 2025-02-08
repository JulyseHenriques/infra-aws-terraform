## For more info: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret

resource "aws_secretsmanager_secret" "this" {
  name                    = var.secret_name
  description             = var.secret_description
  kms_key_id              = var.kms_key_id
  recovery_window_in_days = var.recovery_window_in_days  
  tags                    = var.custom_tags
}

resource "aws_secretsmanager_secret_version" "this" {
  depends_on    = [ aws_secretsmanager_secret.this ]
  secret_id     = aws_secretsmanager_secret.this.id
  secret_string = data.aws_kms_secrets.decrypt.plaintext["secret_string"]
}

resource "aws_secretsmanager_secret_policy" "this" {
  depends_on  = [ aws_secretsmanager_secret.this ]
  secret_arn  = aws_secretsmanager_secret.this.arn
  policy      = data.aws_iam_policy_document.policy_doc.json
}
