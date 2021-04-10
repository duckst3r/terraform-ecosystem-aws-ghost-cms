variable "prefix" {
  description = "A prefix for each resource of the networking module."
  type        = string
}

variable "tags" {
  type    = map(string)
  default = null
}

#####
# VPC
#####

variable "vpc_cidr" {
  default     = "192.168.194.0/23"
  description = "The VPC CIDR block for the Ghost CMS deployment."
  type        = string
}
