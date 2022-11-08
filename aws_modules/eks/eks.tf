terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    # kubectl = {
    #   source  = "gavinbunney/kubectl"
    #   version = "1.14.0"
    # }
   
  }
}
# # Configure the AWS Provider
# provider "aws" {
#   region     = var.region
#   access_key = var.aws_access_key
#   secret_key = var.aws_secret_key
# }

resource "aws_eks_cluster" "example" {
  name     = var.eks_name 
  role_arn = aws_iam_role.example.arn

  vpc_config {
    subnet_ids = var.subnet_ids
  }

  depends_on = [
    aws_iam_role_policy_attachment.example-AmazonEKSClusterPolicy,
    aws_iam_role_policy_attachment.example-AmazonEKSVPCResourceController,
  ]
}

output "endpoint" {
  value = aws_eks_cluster.example.endpoint
}

output "kubeconfig-certificate-authority-data" {
  value = aws_eks_cluster.example.certificate_authority[0].data
}



