
resource "aws_iam_role" "terraform_role" {
  name = var.aws_role_name

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          AWS = var.aws_account_id,
        },
        Condition = {
          StringEquals = {
            "sts:ExternalId" = var.aws_role_external_id,
          },
        },
      },
    ],
  })
}

resource "aws_iam_role_policy_attachment" "terraform_role_policy_attachment" {
  role       = aws_iam_role.terraform_role.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}