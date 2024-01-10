variable "aws_role_name" {
  description = "Name of the IAM role for Terraform"
  type        = string
  default     = "terraform_role"
}

variable "aws_role_external_id" {
  description = "External ID for the IAM role for Terraform"
  type        = string
}

variable "aws_account_id" {
  description = "Value of the AWS account ID"
  type        = string
}

variable "aws_github_user_name" {
  description = "Name of the IAM user for GitHub Actions"
  type        = string
  default     = "github_actions"
}
