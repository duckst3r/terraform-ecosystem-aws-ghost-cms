#####
# General
#####

variable "enable_ha" {
  description = "Choose whether to activate high availability or not."
  default     = false
  type        = bool
}

variable "environment" {
  description = "The environment name for deployment."
  default     = "dev"
  type        = string
}

variable "prefix" {
  description = "A prefix for each resource of the networking module."
  type        = string
}

variable "tags" {
  default = null
  type    = map(string)
}


#####
# Required Input Variables
#####

variable "ecs_cluster_name" {
  description = "The ECS cluster which will place tasks and manage containers."
}

variable "image_id" {
  description = "The AMI image to use for ECS optimized instances."
}

variable "instance_type" {
  description = "The instance type to use for deployment."
  default     = "t2.small"
}

variable "key_name" {
  description = "The keypair to use for SSH connection."
}

variable "public_subnet_ids" {
  description = "The public subnets created by networking module."
  type        = list(string)
}

variable "vpc_id" {
  description = "The VPC in which the autoscaling group will be placed."
}
