resource "helm_release" "example" {
  name       = "elasticsearch"
  repository = "https://helm.elastic.co"
  chart      = "elasticsearch "
  version    = "8.5.1"

  values = [
    "${file("es/values.yaml")}"
  ]

}