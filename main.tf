terraform {
  cloud {
    organization = "mutualofenumclaw"
    workspaces {
      name = "terraform-aws-control_tower_account_factory"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.56.0"
    }
    artifactory = {
      source = "jfrog/artifactory"
      version = "7.11.1"
    }
  }
}
provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key_id
  secret_key = var.aws_secret_access_key
}
provider "artifactory" {
  url           = "https://hts2.jfrog.io/artifactory"
  access_token  = "eyJ2ZXIiOiIyIiwidHlwIjoiSldUIiwiYWxnIjoiUlMyNTYiLCJraWQiOiJ5ek11SE53Ukhfei0yTmJ1UWpwZVhXdFRqemJyWnVGcUtJRldvZXdYQW1VIn0.eyJzdWIiOiJqZnJ0QDAxZThoa3Q2NTU1eTc0MDI2Z2I3MzYxMWhhL3VzZXJzL21hbm9qIiwic2NwIjoiYXBwbGllZC1wZXJtaXNzaW9ucy91c2VyIiwiYXVkIjoiamZydEAwMWU4aGt0NjU1NXk3NDAyNmdiNzM2MTFoYSIsImlzcyI6ImpmcnRAMDFlOGhrdDY1NTV5NzQwMjZnYjczNjExaGEvdXNlcnMvX3N5c3RlbV8iLCJleHAiOjE2ODc5NDM5MzgsImlhdCI6MTY4NTM1MTkzOCwianRpIjoiMzE5NThhMDEtOTNhOC00NWY5LWE1MjMtYjc1MjE4N2YwNTY0In0.VjQ1QnOZv5TIB4Wr2f6lJyGNdYwvUJfVPLJfWw6Pqdoau5oIZKkc2VibGtP2JWHhvx00abtprkDHff41r1HDBHFz8yrY9as_54KjbA-ZcdZ-OACLcsXu41DkPJmE8O7GT5pdkfkjGiqZo_D7HLUdeVIVGjkrzIDmjKPfpvGop0ewhNYz3tp2dFf0XAbJFEN4MDiHDgXJtuWfo5q-mWq_8cfFs12JSWLtxRbRFvkzTaZpdQw0UZdoW-ZuyuZemuevfOKtqudAZfrHmD5moPEDqC0qfH2ixAyJ3rVz90znnZ4nU5Hqrz96hQoQGHBvBwe_f7q4UawQZ9SaKBLYvgfgJQ"
}
module "aft" {
  source  = "hts2.jfrog.io/terraform__aws-ia/control_tower_account_factory/aws"

  # Required Parameters
  ct_management_account_id    = "211478285720"
  log_archive_account_id      = "316241107683"
  audit_account_id            = "017855766036"
  aft_management_account_id   = "008782125710"
  ct_home_region              = "us-west-2"
  tf_backend_secondary_region = "us-east-1"

  # Optional Parameters
  terraform_distribution = "tfc"
  vcs_provider           = "codecommit"
  terraform_org_name     = "mutualofenumclaw"
  terraform_token        = "removed"

  # Optional Feature Flags
  aft_feature_delete_default_vpcs_enabled = true
  aft_feature_cloudtrail_data_events      = false
  aft_feature_enterprise_support          = false
}
