variable "common_tags" {
  description = "This is a map type for applying tags on resources"
  type        = map
}

variable "mfa_delete" {
  default = false
}

variable "terraform_required_version" {
  description = "The required terraform version"
  default = "~> 0.12.6" # this must be that same as in terraform.tf
}

variable "aws_region" {
  type    = string
}

variable "dynamodb_table" {
  type = string
  default = "terraform-state-lock"
}

variable "aws_s3_bucket" {
  type = string
  default = "terraform-state"
}
