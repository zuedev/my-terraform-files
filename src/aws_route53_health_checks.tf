resource "aws_route53_health_check" "zue-dot-dev" {
  fqdn             = "zue.dev"
  type             = "HTTPS"
  request_interval = "30"

  tags = {
    Name = "tf-zue-dot-dev"
  }
}