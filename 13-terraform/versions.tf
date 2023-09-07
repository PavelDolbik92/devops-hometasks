terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.23.0"
    }

    github = {
      source = "integrations/github"
      version = "5.33.0"
    }
  }

  backend "kubernetes" {
     secret_suffix = "wcg-state"
     config_path = "~/.kube/config"
     namespace = "default"
  }
}

provider "kubernetes" {
  config_path = "~/.kube/config"
}

provider "github" {
  token = var.git_token
}

data "github_repositories" "example" {
  query = "org:hashicorp language:Go"
  include_repo_id = true
}