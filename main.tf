resource "aws_iam_role" "this" {
  name                  = "${local.iam_prefix}-${local.stack}-${var.role_suffix}"
  description           = var.description
  force_detach_policies = var.force_detach_policies
  assume_role_policy    = var.assume_role_policy
  permissions_boundary  = var.permissions_boundary
  path                  = var.path
  managed_policy_arns   = var.managed_policy_arns
}