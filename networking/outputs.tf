#####
# VPC
#####

output "vpc_arn" {
  description = "Amazon Resource Name (ARN) of VPC."
  value       = aws_vpc.this.arn
}

output "vpc_id" {
  description = "The ID of the VPC."
  value       = aws_vpc.this.id
}

output "vpc_cidr_block" {
  description = "The CIDR block of the VPC."
  value       = aws_vpc.this.cidr_block
}

output "vpc_instance_tenancy" {
  description = "Tenancy of instances spin up within VPC."
  value       = aws_vpc.this.instance_tenancy
}

output "vpc_enable_dns_support" {
  description = "Whether or not the VPC has DNS support."
  value       = aws_vpc.this.enable_dns_support
}

output "vpc_enable_dns_hostnames" {
  description = "Whether or not the VPC has DNS hostname support."
  value       = aws_vpc.this.enable_dns_hostnames
}

output "vpc_enable_classiclink" {
  description = "Whether or not the VPC has Classiclink enabled."
  value       = aws_vpc.this.enable_classiclink
}

output "vpc_main_route_table_id" {
  description = "The ID of the main route table associated with this VPC. Note that you can change a VPC's main route table by using an aws_main_route_table_association."
  value       = aws_vpc.this.main_route_table_id
}

output "vpc_default_network_acl_id" {
  description = "The ID of the network ACL created by default on VPC creation."
  value       = aws_vpc.this.default_network_acl_id
}

output "vpc_default_security_group_id" {
  description = "The ID of the security group created by default on VPC creation."
  value       = aws_vpc.this.default_security_group_id
}

output "vpc_default_route_table_id" {
  description = "The ID of the route table created by default on VPC creation."
  value       = aws_vpc.this.default_route_table_id
}

output "vpc_ipv6_association_id" {
  description = "The association ID for the IPv6 CIDR block."
  value       = aws_vpc.this.ipv6_association_id
}

output "vpc_ipv6_cidr_block" {
  description = "The IPv6 CIDR block."
  value       = aws_vpc.this.ipv6_cidr_block
}

output "vpc_owner_id" {
  description = "The ID of the AWS account that owns the VPC."
  value       = aws_vpc.this.owner_id
}

output "vpc_tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_vpc.this.tags_all
}


#####
# Subnets
#####

output "vpc_public_subnet_ids" {
  description = "The list if public subnet IDs."
  value       = aws_subnet.this_public.*.id
}

output "vpc_public_subnet_arns" {
  description = "The list if public subnet ARNs."
  value       = aws_subnet.this_public.*.arn
}

output "vpc_private_subnet_ids" {
  description = "The list if private subnet IDs."
  value       = aws_subnet.this_private.*.id
}

output "vpc_private_subnet_arns" {
  description = "The list if private subnet ARNs."
  value       = aws_subnet.this_private.*.arn
}
