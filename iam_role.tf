module "iam_role" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-assumable-role"
  version = ">= 5.1.0"

  create_role = true
  role_name   = var.name

  allow_self_assume_role          = true
  custom_role_trust_policy        = data.aws_iam_policy_document.trust_policy.json
  create_custom_role_trust_policy = true
  custom_role_policy_arns = [
    aws_iam_policy.access.arn
  ]
}
