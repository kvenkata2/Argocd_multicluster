# terraform {
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 4.0"
#     }
#     kubectl = {
#       source  = "gavinbunney/kubectl"
#       version = "1.14.0"
#     }
#     helm = {
#       source  = "hashicorp/helm"
#       version = "2.7.1"
#     }
#     kubernetes = {
#       source  = "hashicorp/kubernetes"
#       version = "2.14.0"
#     }
#    argocd = {
#       source = "oboukili/argocd"
#       version = "4.1.0"
#     }
#   }
# }

# # Configure the AWS Provider
# provider "aws" {
#   region     = var.region
#   access_key = var.aws_access_key
#   secret_key = var.aws_secret_key
# }

# provider "argocd" {
#   # Configuration options
#   server_addr = data.local_file.foo.content
#   username = "admin"
#   password = "mzHOBzTjbvwUpjPP"
#   insecure = true
# }

# data "aws_eks_cluster_auth" "example" {
#   name = var.eks_name
# }

# provider "kubectl" {
#   host                   = module.eks.endpoint
#   cluster_ca_certificate = base64decode(module.eks.kubeconfig-certificate-authority-data)
#   token                  = data.aws_eks_cluster_auth.example.token
#   load_config_file       = false
# }

# provider "kubernetes" {
#   host                   = module.eks.endpoint
#   cluster_ca_certificate = base64decode(module.eks.kubeconfig-certificate-authority-data)
#   token                  = data.aws_eks_cluster_auth.example.token
# }

# # provider "helm" {
# #   kubernetes {
# #     host                   = module.eks.endpoint
# #     token                  = data.aws_eks_cluster_auth.example.token
# #     cluster_ca_certificate = base64decode(module.eks.kubeconfig-certificate-authority-data)
# #   }
# # }