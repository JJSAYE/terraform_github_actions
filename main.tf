terraform {
  required_providers {
    snowflake = {
      source  = "chanzuckerberg/snowflake"
      version = "0.25.17"
    }
  }

  backend "remote" {
    organization = "jsaye"

    workspaces {
      name = "gh-actions-demo"
    }
  }
}

provider "snowflake" {
  account  = var.SNOWFLAKE_ACCOUNT
  username = var.SNOWFLAKE_USER
  region   = var.SNOWFLAKE_REGION
  password = var.SNOWFLAKE_PASSWORD
  role     = var.SNOWFLAKE_ROLE
}

resource "snowflake_database" "demo_db" {
  name    = "DEMO_DB"
  comment = "Database for Snowflake Terraform demo"
}
