resource "helm_release" "flux" {
  name       = "flux"
  repository = "https://charts.fluxcd.io"
  chart      = "flux"
  namespace  = "flux"

  set {
    name  = "git.url"
    value = "git@github.com:BulbaWarrior/flux-get-started"
    type  = "string"
  }
}

resource "helm_release" "helm-operator" {
  name       = "helm-operator"
  repository = "https://charts.fluxcd.io"
  chart      = "helm-operator"
  namespace  = "flux"

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
