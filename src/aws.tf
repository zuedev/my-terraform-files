variable "aws_access_key" {
  type      = string
  sensitive = true
}

variable "aws_secret_key" {
  type      = string
  sensitive = true
}

provider "aws" {
  region     = "eu-west-2"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_route53_health_check" "zue-dot-dev" {
  fqdn             = "zue.dev"
  type             = "HTTPS"
  request_interval = "30"
  measure_latency  = true

  tags = {
    Name = "tf-zue-dot-dev"
  }
}