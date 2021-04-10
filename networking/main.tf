resource "aws_vpc" "this" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = merge(
    {
      Name = local.vpc_name
    },
    var.tags
  )
}
