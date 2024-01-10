output "github_action_user_key_id" {
  description = "GitHub Actions user access key ID"
  value       = aws_iam_access_key.github_action_user_access_key.id
}

output "github_action_user_secret" {
  description = "GitHub Actions user access key secret"
  value       = aws_iam_access_key.github_action_user_access_key.secret
}

output "terraform_role_arn" {
  description = "ARN of the IAM role for Terraform"
  value       = aws_iam_role.terraform_role.arn
}
