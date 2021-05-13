data "kubernetes_secret" "flux-git-deploy" {
  metadata {
    name      = "flux-git-deploy"
    namespace = var.namespace
  }
}

output "flux_pubkey" {
  value = data.kubernetes_secret.flux-git-deploy.data["identity.pub"]
}
