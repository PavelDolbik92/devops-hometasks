resource "kubernetes_service" "svc-wcg" {
  metadata {
    name = local.service_name
  }
  spec {
    selector = local.labels

    port {
      port        = var.service_port
      target_port = var.service_port
    }

    type = var.service_type
  }
}