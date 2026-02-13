variable "db_user" {
  default = "strapiuser"
}

variable "db_password" {
  default = "StrapiPass123!"
}

variable "admin_auth_secret" {
  type      = string
  sensitive = true
}

variable "jwt_secret" {
  type      = string
  sensitive = true
  default = "5GFC/QHqtX2lVT76cS3p6A=="
}

variable "app_keys" {
  type      = string
  sensitive = true
}

variable "api_token_salt" {}
variable "transfer_token_salt" {}
variable "encryption_key" {}