variable "enable_ha" {
  description = "Choose whether to activate high availability or not."
  default     = false
  type        = bool
}

variable "prefix" {
  description = "A prefix for each resource of the networking module."
  type        = string
}

variable "tags" {
  default = null
  type    = map(string)
}
