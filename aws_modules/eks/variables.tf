variable "aws_access_key" {
  default = ""
}

variable "aws_secret_key" {
  default = ""
}

variable "region" {
  default = "us-east-2"
}

variable "eks_name" {
  default = "terraform_cluster1"
}
#####scaling config####

variable "desired_size" {
  default = "1"
}

variable "max_size" {
  default = "2"
}

variable "min_size" {
  default = "1"
}

variable "max_unavailable" {
  default = "1"
}


variable "subnet_ids" {
  default = ["subnet-0d4ddb2785a4ee92d", "subnet-02baf1a3aecca3cf6"]
}

