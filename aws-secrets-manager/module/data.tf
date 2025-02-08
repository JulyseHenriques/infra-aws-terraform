data "aws_kms_secrets" "decrypt" {
  secret {
    name                    = "secret_string"
    encryption_algorithm    = "SYMMETRIC_DEFAULT"
    key_id                  = var.kms_key_id
    payload                 = var.encrypted_secret
  }
}

data "aws_iam_policy_document" "policy_doc" {
  statement {
    sid       = "EnableAnotherAWSAccountToReadTheSecret"
    effect    = "Allow"
    actions   = ["secretsmanager:GetSecretValue"]
    resources = ["*"]
  }
}
