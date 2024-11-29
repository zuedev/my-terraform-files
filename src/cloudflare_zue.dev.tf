data "cloudflare_zones" "zue-dot-dev" {
  filter {
    name = "zue.dev"
  }
}

resource "cloudflare_record" "zue-dot-dev_aws_ns_1" {
  zone_id = data.cloudflare_zones.zue-dot-dev.zones.0.id

  comment = "TF-${formatdate("YYMMDDhhmmss", timestamp())}"

  type    = "NS"
  name    = "aws.zue.dev"
  value   = "ns-1732.awsdns-24.co.uk"

  allow_overwrite = true
}

resource "cloudflare_record" "zue-dot-dev_aws_ns_2" {
  zone_id = data.cloudflare_zones.zue-dot-dev.zones.0.id

  comment = "TF-${formatdate("YYMMDDhhmmss", timestamp())}"

  type    = "NS"
  name    = "aws.zue.dev"
  value   = "ns-1179.awsdns-19.org"

  allow_overwrite = true
}

resource "cloudflare_record" "zue-dot-dev_aws_ns_3" {
  zone_id = data.cloudflare_zones.zue-dot-dev.zones.0.id

  comment = "TF-${formatdate("YYMMDDhhmmss", timestamp())}"

  type    = "NS"
  name    = "aws.zue.dev"
  value   = "ns-810.awsdns-37.net"

  allow_overwrite = true
}

resource "cloudflare_record" "zue-dot-dev_aws_ns_4" {
  zone_id = data.cloudflare_zones.zue-dot-dev.zones.0.id

  comment = "TF-${formatdate("YYMMDDhhmmss", timestamp())}"

  type    = "NS"
  name    = "aws.zue.dev"
  value   = "ns-298.awsdns-37.com"

  allow_overwrite = true
}