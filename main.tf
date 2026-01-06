terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.90"
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
  account_name      = "ZB00879"
  organization_name = "AHBWGBT"
  username          = var.SNOWFLAKE_USER
  password          = var.SNOWFLAKE_PASSWORD
  role              = var.SNOWFLAKE_ROLE
  region            = "us-west-2"
}

resource "snowflake_database" "demo_db" {
  name    = "DEMO_DB"
  comment = "Database for Snowflake Terraform demo"
}
