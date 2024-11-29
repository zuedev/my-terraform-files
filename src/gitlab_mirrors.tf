resource "gitlab_project" "gitlab_mirror_my-terraform-files" {
  name             = "my-terraform-files"
  import_url       = "https://github.com/zuedev/my-terraform-files.git"
  mirror           = true
  visibility_level = "public"
}