variable "prefix" {
  description = "A prefix for each resource of the networking module."
  type        = string
}

variable "tags" {
  type    = map(string)
  default = null
}
