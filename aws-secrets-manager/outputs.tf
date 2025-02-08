output "secret_id" {
    description = "ID of the secret."
    value = module.secrets_manager_module.secret_id
}

output "secret_arn" {
    description = "ARN of the secret."
    value = module.secrets_manager_module.secret_arn
}

output "secret_name" {
    description = "Name of the secret."
    value = module.secrets_manager_module.secret_name
}
