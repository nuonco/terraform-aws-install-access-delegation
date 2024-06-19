variable "name" {
  type        = string
  description = "app name"
}

variable "enable_support_access" {
  type        = bool
  default = true
  description = "Grant access to additional Nuon accounts for debugging support"
}
