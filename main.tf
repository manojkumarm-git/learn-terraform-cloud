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
  url           = "https://test.jfrog.io/artifactory"
  access_token  = "xxxxxxxx"
module "aft" {
  source  = "test.jfrog.io/mk-terraform__aws-ia/control_tower_account_factory/aws"

  # Required Parameters
  ct_management_account_id    = "xxxx"
  log_archive_account_id      = "xxx"
  audit_account_id            = "xxx"
  aft_management_account_id   = "xxxx"
  ct_home_region              = "us-west-2"
  tf_backend_secondary_region = "us-east-1"

  # Optional Parameters
  terraform_distribution = "tfc"
  vcs_provider           = "codecommit"
  terraform_org_name     = "xxx"
  terraform_token        = "removed"

  # Optional Feature Flags
  aft_feature_delete_default_vpcs_enabled = true
  aft_feature_cloudtrail_data_events      = false
  aft_feature_enterprise_support          = false
}
