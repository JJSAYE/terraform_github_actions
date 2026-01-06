variable "SNOWFLAKE_ACCOUNT" {
  type = string
}

variable "SNOWFLAKE_REGION" {
  type = string
}

variable "SNOWFLAKE_USER" {
  type = string
}

variable "SNOWFLAKE_PASSWORD" {
  type = string
}


provider "snowflake" {
  account = var.SNOWFLAKE_ACCOUNT
  user    = var.SNOWFLAKE_USER
  region  = var.SNOWFLAKE_REGION
  password = var.SNOWFLAKE_PASSWORD
}
