variable "location" {
  type    = string
  default = "East US"
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "admin_username" {
  type      = string
  sensitive = true
}

variable "admin_password" {
  type      = string
  sensitive = true
}
