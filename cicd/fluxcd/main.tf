resource "kubernetes_namespace" "flux" {
  count = var.create_namespace ? 1 : 0
  metadata {
    name = var.namespace
  }
}

resource "helm_release" "flux" {
  depends_on = [kubernetes_namespace.flux]
  name       = "flux"
  repository = "https://charts.fluxcd.io"
  chart      = "flux"
  namespace  = var.namespace

  set {
    name  = "git.url"
    value = "git@github.com:BulbaWarrior/flux-get-started"
    type  = "string"
  }
}

resource "helm_release" "helm-operator" {
  depends_on = [kubernetes_namespace.flux]
  name       = "helm-operator"
  repository = "https://charts.fluxcd.io"
  chart      = "helm-operator"
  namespace  = var.namespace

  set {
    name  = "git.ssh.secretName"
    value = "flux-git-deploy"
    type  = "string"
  }
  set {
    name  = "helm.versions"
    value = "v3"
    type  = "string"
  }
}
