module "production" {
  source         = "../aws_modules/eks"
  aws_access_key = var.aws_access_key
  aws_secret_key = var.aws_secret_key
  region         = var.region
  eks_name       = var.eks_name
  desired_size    = var.desired_size
  max_size        = var.max_size
  min_size        = var.min_size
  max_unavailable = var.max_unavailable
}


module "argo_cd" {
  source                              = "../aws_modules/argo"
  kubernetes_custom_resources_enabled = var.kubernetes_custom_resources_enabled
  root_app_repository_url             = var.root_app_repository_url
  root_app_repository_ref             = var.root_app_repository_ref
}

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
  }
}

data "aws_eks_cluster_auth" "example" {
  name = var.eks_name
}

## Configure the AWS Provider
provider "aws" {
  region     = var.region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

provider "kubernetes" {
  host =  module.eks.endpoint
  cluster_ca_certificate = base64decode(module.eks.kubeconfig-certificate-authority-data)
  token = data.aws_eks_cluster_auth.example.token
}


output "endpoint" {
  value = module.eks.endpoint
}

output "certificate" {
  value = module.eks.kubeconfig-certificate-authority-data
}


