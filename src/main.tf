terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "5.0.0-alpha1"
    }
  }

  cloud {
    organization = "zuedev"

    workspaces {
      name = "my-terraform-files"
    }
  }
}
