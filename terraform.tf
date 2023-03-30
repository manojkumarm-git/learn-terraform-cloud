terraform {

  cloud {
    organization = "terratestorg"

    workspaces {
      name = "terraspace"
    }
  }

  required_version = ">= 0.14.0"
}
