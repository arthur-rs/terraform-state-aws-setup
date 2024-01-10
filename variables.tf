variable "aws_profile" {
  description = "Personal AWS profile name"
  type        = string
  default     = "default"
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "aws_bucket_name" {
  description = "Name of the S3 bucket for Terraform state storage"
  type        = string
  default     = "terraform-state-bucket"
}

variable "aws_dynamodb_table_name" {
  description = "Name of the DynamoDB table for Terraform state locking"
  type        = string
  default     = "terraform_lock_table"
}

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

