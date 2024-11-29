resource "aws_route53_health_check" "zue-dot-dev" {
  fqdn             = "zue.dev"
  type             = "HTTPS"
  request_interval = "30"
  measure_latency  = true

  tags = {
    Name = "tf-zue-dot-dev"
  }
}