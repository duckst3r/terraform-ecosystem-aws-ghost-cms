variable "tags" {
  type    = map(string)
  default = null
}

variable "project" {
  description = "The project name."
  default     = "ghost"
  type        = string
}
