resource "argocd_application" "postgres_cluster" {
  metadata {
    name      = "postgres-cluster"
    namespace = "argocd"
  }

  spec {
    project = "default"

    source {
      repo_url        = "git@github.com:fabriziowho/project.git"
      target_revision = "main"
      path            = "k8s-app/postgres-cluster"

      helm {
        value_files = ["values.yaml"]
      }
    }

    destination {
      namespace = "default"
      server    = "https://kubernetes.default.svc"
    }

    sync_policy {
      automated {
        self_heal = true
        prune     = true
      }

      sync_options = [
        "CreateNamespace=true"
      ]
    }
  }
}
