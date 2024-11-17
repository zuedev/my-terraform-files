data "cloudflare_zones" "zue-dot-dev" {
  filter {
    name = "zue.dev"
  }
}

resource "cloudflare_record" "zue-dot-dev_test" {
  zone_id = data.cloudflare_zones.zue-dot-dev.zones.0.id

  comment = "TF-${formatdate("YYMMDDhhmmss", timestamp())}"

  type    = "CNAME"
  name    = "test.zue.dev"
  value   = "zue.dev"
  proxied = true

  allow_overwrite = true
}
