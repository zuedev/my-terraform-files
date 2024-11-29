variable "gitlab_token" {
  type      = string
  sensitive = true
}

provider "gitlab" {
  token = var.gitlab_token
}