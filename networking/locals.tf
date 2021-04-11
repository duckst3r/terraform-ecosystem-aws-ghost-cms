locals {
  vpc_name            = "${var.prefix}-vpc"
  vpc_cidr            = "192.168.194.0/23"
  subnet_public_name  = "${var.prefix}-subnet-public"
  subnet_private_name = "${var.prefix}-subnet-private"
}
