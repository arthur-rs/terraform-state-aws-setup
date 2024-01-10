module "bucket" {
  source          = "./modules/bucket"
  aws_bucket_name = var.aws_bucket_name
}

module "dynamodb" {
  source                  = "./modules/dynamodb"
  aws_dynamodb_table_name = var.aws_dynamodb_table_name
}

module "iam" {
  source               = "./modules/iam"
  aws_github_user_name = var.aws_github_user_name
  aws_account_id       = var.aws_account_id
  aws_role_external_id = var.aws_role_external_id
  aws_role_name        = var.aws_role_name
}