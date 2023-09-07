resource "github_repository_file" "files" {
  for_each = fileset("${path.module}", "*.tf")

  repository = "devops-hometasks"
  branch     = "main"
  file       = "13-terraform/${each.value}"
  content    = file("${path.module}/${each.value}")
}