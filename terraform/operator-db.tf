resource "helm_release" "crunchy_operator" {
    name       = "crunchy-operator"
    chart      = "pgo"
    version    = "5.7.4"
    repository = "oci://registry.developers.crunchydata.com/crunchydata"
    namespace  = "default"
}
