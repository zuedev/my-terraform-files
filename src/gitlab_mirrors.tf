resource "gitlab_project" "gitlab_mirrors_zuedev" {
  for_each         = toset(["my-terraform-files", "my-opentofu-files"])
  name             = each.key
  import_url       = "https://github.com/zuedev/${each.key}.git"
  mirror           = true
  visibility_level = "public"
}