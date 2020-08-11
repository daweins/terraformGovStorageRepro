
variable "location" {
  description = "region"
  default     = "usgovvirginia" 
}

variable "ARM_SUBSCRIPTION_ID" {
  description = "subID"
  default     = "REQUIRED"
}

variable "ARM_CLIENT_ID" {
  description = "spID"
  default     = "REQUIRED"
}

variable "ARM_CLIENT_SECRET" {
  description = "secret"
  default     = "REQUIRED"
}

variable "ARM_TENANT_ID" {
  description = "tenant"
  default     = "REQUIRED"
}

variable "ARM_ENVIRONMENT" {
  description = "env"
  default     = "REQUIRED"
}
