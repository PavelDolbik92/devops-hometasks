resource "kubernetes_ingress_v1" "ingress-wcg" {
  metadata {
    name        = local.ingress_name
    annotations = local.ingress_annotations
  }
  spec {
    rule {
      host = var.ingress_host
      http {
        path {
          path      = var.ingress_path
          path_type = var.ingress_path_type
          backend {
            service {
              name = local.service_name
              port {
                number = var.service_port
              }
            }
          }
        }
      }
    }
  }
}