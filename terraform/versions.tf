terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.23.0"
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