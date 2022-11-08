terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = "1.14.0"
    }
    argocd = {
      source  = "oboukili/argocd"
      version = "4.1.0"
    }
  }
}

provider "aws" {
  region     = var.region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

data "aws_eks_cluster_auth" "example" {
  name = var.eks_name
}

provider "kubernetes" {
  host                   = var.eks_endpoint
  cluster_ca_certificate = base64decode(var.eks_certificate)
  token                  = data.aws_eks_cluster_auth.example.token
}

provider "kubectl" {
  host                   = var.eks_endpoint
  cluster_ca_certificate = base64decode(var.eks_certificate)
  token                  = data.aws_eks_cluster_auth.example.token
  load_config_file       = false
}


