terraform {
  cloud {
    organization = "terratestorg"

    workspaces {
      name = "Clispace"
    }
  }

  required_providers {
  
    artifactory = {

      source = "jfrog/artifactory"

      version = "7.4.3"

    }

  }

}

provider "artifactory" {

  url           = "https://clouddsein.jfrog.io/artifactory"

  access_token  = "eyJ2ZXIiOiIyIiwidHlwIjoiSldUIiwiYWxnIjoiUlMyNTYiLCJraWQiOiJEeFBFMzAzVUd2alNWaV80VUZpV0tZRFR2TldocGJ1OXhZR2VTMHA2MmVzIn0.eyJzdWIiOiJqZmFjQDAxZ3R3MTZqMDFtdmozMTV0eWh4YTYxczI4XC91c2Vyc1wvbWFub2oiLCJzY3AiOiJhcHBsaWVkLXBlcm1pc3Npb25zXC9hZG1pbiIsImF1ZCI6IipAKiIsImlzcyI6ImpmZmVAMDFndHcxNmowMW12ajMxNXR5aHhhNjFzMjgiLCJpYXQiOjE2ODE2OTk4NzUsImp0aSI6ImMzZTllZmJiLTMwOWQtNDcwNC1hNjNkLTNmNmQ4ZTIzMmYzZSJ9.gg3lZVXdrfhAwOolWg4xXyUCOkCDSvLlUBD3drK2lmK81l0-Zd_AgljdgDA1xyKle8JUrzfZ8qDvva8mTW9FokLGhROP9q1qjgIbJ7k4nk0pMW-04poh4HGCUoswnRhkAMhOkTtljFDXEaqTtZHRD3l_PGjgDirciTQd_GIxktwmBV6RS_jeie0pi-uZoncFQVIxPuzyt5LoJ8tPtIfpUS38gqSXFNRG7UC0vpiTlIyTsuuWdQc71phLZx33vQkTAeCfHwmGOLjJ69CfgrLSHcy31J-47XS6Lfxm0oOEEww43t5AlpdUjj2b_fjm-nGcoHWBd4XmOr9Wh-Z0EMu8sA"
}

module "mymodule" {

    source  = "clouddsein.jfrog.io/mk-terraform__myns/mymodule/myprovider/"

}
