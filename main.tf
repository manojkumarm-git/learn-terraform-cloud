terraform {
  cloud {
    organization = "terratestorg"

    workspaces {
      name = "Clispace"
    }
  }

  required_providers {
  
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.56.0"
    }
    artifactory = {

      source = "jfrog/artifactory"

      version = "7.4.3"

    }

  }

}


# Configure the Artifactory provider

provider "artifactory" {

  url           = "https://sandeepmkp.jfrog.io/artifactory"

  access_token  = "eyJ2ZXIiOiIyIiwidHlwIjoiSldUIiwiYWxnIjoiUlMyNTYiLCJraWQiOiJEUjBFNTdnRHVycXpNZFR2TVJfajYwRGhVbXkyc3JYWGYwZ2tyVXhUSkhjIn0.eyJzdWIiOiJqZmFjQDAxZnM0NTF3NDJ5OHBnMTlydGF5cmEwNGN0XC91c2Vyc1wvbWFub2oiLCJzY3AiOiJhcHBsaWVkLXBlcm1pc3Npb25zXC9hZG1pbiIsImF1ZCI6WyJqZnJ0QCoiLCJqZmFjQCoiLCJqZmV2dEAqIiwiamZtZEAqIiwiamZjb25AKiJdLCJpc3MiOiJqZmZlQDAxZnM0NTF3NDJ5OHBnMTlydGF5cmEwNGN0IiwiZXhwIjoxNjgyNzUxMDI4LCJpYXQiOjE2ODAxNTkwMjgsImp0aSI6Ijc0YjhlZjExLTU5YjctNDA4Mi1iY2Y5LTNlOWQzZjBjNzY5YyJ9.VPt_aWLdKBj0_DBWpmUVOmt0VZxFap4yighSo44TJzxuSOFN52GR5uPTsh7v1neTcv31tLMDS5HVMwwejie1dA9uMAxlREA-leNBzuPyr5A6zrCqfOdq-SX1XK2yzLqQXX-40Jwu10dsJo959MN3xIcWhDK7t4Hybb-1J2TIgS5Qni7F9ZKV4CzZjx4xMcg0iSMeVTRcxpM4hoXQ0SzO1GpCvTroixiajUK_T6xGbQ0EcJiyECRySpuZctSnE9HI6XhKzZoRUHnb_vrCl1nbI9TF5SmNOUfNTXEAY5BmYPI2boIoTwn0TnFqR3uEH1PZQE6D_zV19a83n_9M_KJCqg"

}

module "aft" {
  source  = "sandeepmkp.jfrog.io/test-terraform__aws-ia/control_tower_account_factory/aws"

}
