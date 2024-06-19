data "aws_iam_policy_document" "access" {
  statement {
    effect = "Allow"
    actions = [
      "sts:AssumeRole",
    ]
    resources = ["*", ]
  }
}

resource "aws_iam_policy" "access" {
  name   = var.name
  policy = data.aws_iam_policy_document.access.json
}
