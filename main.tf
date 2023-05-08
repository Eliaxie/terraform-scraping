resource "kubernetes_namespace" "es" {
  metadata {
    name = "elasticsearch"
  }
}

resource "helm_release" "es" {
  name       = "elasticsearch"
  repository = "https://helm.elastic.co"
  chart      = "elasticsearch"
  namespace  = "elasticsearch"
  version    = "8.5.1"

  values = [
    "${file("es/values.yaml")}"
  ]

  depends_on = [
    kubernetes_namespace.es
  ]

  timeout = 6000
}