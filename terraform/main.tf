terraform {
  required_providers {
    helm = {
      source = "hashicorp/helm"
      version = "3.0.0-pre2"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.36.0"
    }
    argocd = {
      source = "argoproj-labs/argocd"
      version = "7.4.0"
    }
  }
}

provider "kubernetes" {
  config_path = "C:\\Users\\Fabrizio Chiavari\\.kube\\config"
}

provider "argocd" {
  server_addr = "localhost:65019"
  config_path = "C:\\Users\\Fabrizio Chiavari\\.kube\\config"
  username = "admin"
  password = "********"
  insecure = true
}

# $env:KUBE_CONFIG_PATH="C:\Users\Fabrizio Chiavari\.kube\config"
