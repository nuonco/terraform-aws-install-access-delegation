variable "name" {
  type        = string
  default     = "name"
  description = "app name"
}

variable "enable_support_access" {
  type        = bool
  description = "Grant access to additional Nuon accounts for debugging support"
}
