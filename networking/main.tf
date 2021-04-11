#####
# VPC
#####

resource "aws_vpc" "this" {
  cidr_block       = local.vpc_cidr
  instance_tenancy = "default"

  tags = merge(
    {
      Name = local.vpc_name
    },
    var.tags
  )
}


#####
# Subnets
#####

resource "aws_subnet" "this_public" {
  count = var.enable_ha ? 2 : 1

  availability_zone = data.aws_availability_zones.available.names[count.index]
  vpc_id            = aws_vpc.this.id
  cidr_block        = cidrsubnet(local.vpc_cidr, 4, count.index)

  tags = merge(
    {
      Name = "${local.subnet_public_name}-${count.index}"
    },
    var.tags
  )
}

resource "aws_subnet" "this_private" {
  count = var.enable_ha ? 2 : 1

  availability_zone = data.aws_availability_zones.available.names[count.index]
  vpc_id            = aws_vpc.this.id
  cidr_block        = cidrsubnet(local.vpc_cidr, 4, count.index + length(aws_subnet.this_public))

  tags = merge(
    {
      Name = "${local.subnet_private_name}-${count.index}"
    },
    var.tags
  )
}
