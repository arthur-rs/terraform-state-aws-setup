resource "aws_s3_bucket" "terraform_bucket" {
  bucket = var.aws_bucket_name

  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_s3_bucket_acl" "terraform_bucket_acl" {
  bucket = aws_s3_bucket.terraform_bucket.id
  acl    = "private"
}

resource "aws_s3_bucket_versioning" "terraform_bucket_versioning" {
  bucket = aws_s3_bucket.terraform_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}