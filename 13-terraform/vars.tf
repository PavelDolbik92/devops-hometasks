variable "app_name" {
  type    = string
  default = "wcg"
}

variable "image" {
  type    = string
  default = "ghcr.io/paveldolbik92/wcg:latest"
}

variable "service_port" {
  type    = number
  default = 8888
}

variable "service_type" {
  type    = string
  default = "ClusterIP"
}

variable "replicas" {
  type    = number
  default = 1
}

variable "nginx_rewrite-target" {
  type    = string
  default = "/"
}

variable "ingress_class" {
  type    = string
  default = "nginx"
}

variable "ingress_host" {
  type    = string
  default = "wcg.app.local"
}

variable "ingress_path_type" {
  type    = string
  default = "Prefix"
}

variable "ingress_path" {
  type    = string
  default = "/"
}

variable "TF_git_token" {
  sensitive = true
  type = string
}

locals {
  service_name    = "${var.app_name}-svr"
  deployment_name = "${var.app_name}-dep"
  ingress_name    = "${var.app_name}-ingress"
  container_name  = var.app_name
  ingress_annotations = {
    "nginx.ingress.kubernetes.io/rewrite-target" = var.nginx_rewrite-target
    "kubernetes.io/ingress.class"                = var.ingress_class
  }
  labels = {
    app = var.app_name
  }
}