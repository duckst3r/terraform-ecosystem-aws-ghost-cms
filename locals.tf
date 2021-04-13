locals {
  name = format("%s-%s-%s-%s",
    var.project,
    var.environment,
    data.aws_caller_identity.current.account_id,
    data.aws_region.current.name
  )

  tags = {
    Environment = var.environment
    managed-by  = "Terraform"
  }
}
