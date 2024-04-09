variable "access_key" {
    description = "access_key"
    type        = string
}

variable "secret_key" {
    description = "secret_key"
    type        = string
}

variable "security_group" {
    description = "security_group"
    type        = string
}

variable "pem_key" {
  description = "The PEM key for SSH access"
  type        = string
  sensitive   = true
}

