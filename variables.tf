variable "enable_ha" {
  description = "Choose whether to activate high availability or not."
  default     = false
  type        = bool
}

variable "environment" {
  description = "The environment name for deployment."
  default     = "production"
  type        = string
}

variable "project" {
  description = "The project name."
  default     = "ghost"
  type        = string
}

variable "tags" {
  type    = map(string)
  default = null
}
