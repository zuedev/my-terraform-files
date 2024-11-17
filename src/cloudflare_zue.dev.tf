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

resource "cloudflare_record" "zue-dot-dev_test2" {
  zone_id = data.cloudflare_zones.zue-dot-dev.zones.0.id

  comment = "TF-${formatdate("YYMMDDhhmmss", timestamp())}"

  type    = "CNAME"
  name    = "test2.zue.dev"
  value   = "zue.dev"
  proxied = true

  allow_overwrite = true
}

resource "cloudflare_record" "zue-dot-dev_test3" {
  zone_id = data.cloudflare_zones.zue-dot-dev.zones.0.id

  comment = "TF-${formatdate("YYMMDDhhmmss", timestamp())}"

  type    = "CNAME"
  name    = "test3.zue.dev"
  value   = "zue.dev"
  proxied = true

  allow_overwrite = true
}

resource "cloudflare_record" "zue-dot-dev_test4" {
  zone_id = data.cloudflare_zones.zue-dot-dev.zones.0.id

  comment = "TF-${formatdate("YYMMDDhhmmss", timestamp())}"

  type    = "CNAME"
  name    = "test4.zue.dev"
  value   = "zue.dev"
  proxied = true

  allow_overwrite = true
}

resource "cloudflare_record" "zue-dot-dev_test5" {
  zone_id = data.cloudflare_zones.zue-dot-dev.zones.0.id

  comment = "TF-${formatdate("YYMMDDhhmmss", timestamp())}"

  type    = "CNAME"
  name    = "test5.zue.dev"
  value   = "zue.dev"
  proxied = true

  allow_overwrite = true
}
