terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }

  cloud {
    organization = "zuedev"

    workspaces {
      name = "my-terraform-files"
    }
  }
}
