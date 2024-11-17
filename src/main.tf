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
      name = "gitlab-sovereign-zue-dev_zuedev_my-terraform-files"
    }
  }
}
