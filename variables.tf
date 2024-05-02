variable "snowflake_account" {
  description = "The Snowflake account for resources to be loaded into."
  type        = string
  default     = "jnb57106"
}

variable "snowflake_region" {
  description = "The AWS region of the Snowflake account."
  type        = string
  default     = "us-east-1"
}

variable "snowflake_username" {
  description = "The username for the Snowflake Terraform user"
  sensitive   = true
  type        = string
  default     = "TERRAFORM_USER"
}

variable "snowflake_user_password" {
  description = "The password for the Snowflake Terraform user"
  sensitive   = true
  type        = string
}

variable "snowflake_user_role" {
  description = "The role of the Terraform user."
  type        = string
  default     = "TERRAFORM"
}
