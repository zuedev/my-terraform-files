terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = "17.6.1"
    }
  }

  cloud {
    organization = "zuedev"

    workspaces {
      name = "my-terraform-files"
    }
  }
}
