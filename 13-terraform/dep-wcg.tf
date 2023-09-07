resource "kubernetes_deployment" "dep-wcg" {
  metadata {
    name = local.deployment_name
  }

  spec {
    replicas = var.replicas

    selector {
      match_labels = local.labels
    }

    template {
      metadata {
        labels = local.labels
      }

      spec {
        container {
          image = var.image
          name  = local.container_name
        }
      }
    }
  }
}