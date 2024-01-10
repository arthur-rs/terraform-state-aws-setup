resource "aws_iam_user" "github_action_user" {
  name = var.aws_github_user_name
}

resource "aws_iam_access_key" "github_action_user_access_key" {
  user = aws_iam_user.github_action_user.name
}

resource "aws_iam_policy_attachment" "github_action_user_policy_attachment" {
  name       = "github_action_user_policy_attachment"
  users      = [aws_iam_user.github_action_user.name]
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}