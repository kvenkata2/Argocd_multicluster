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

variable "eks_endpoint" {
  type = string
  default = "https://3B4FF6EE822EDFF441663604D8F2DE35.gr7.us-east-2.eks.amazonaws.com"
}

variable "eks_certificate" {
  type = string
  default = "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUMvakNDQWVhZ0F3SUJBZ0lCQURBTkJna3Foa2lHOXcwQkFRc0ZBREFWTVJNd0VRWURWUVFERXdwcmRXSmwKY201bGRHVnpNQjRYRFRJeU1URXdNakUxTlRrd01sb1hEVE15TVRBek1ERTFOVGt3TWxvd0ZURVRNQkVHQTFVRQpBeE1LYTNWaVpYSnVaWFJsY3pDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDQVFvQ2dnRUJBTnVmCkUzNkJjOEMvblZsem11bXlkMk9zWGtvT0VJWjVoc09OclU2NXJtTWVHOE9wSGw0VEUwZ0hrNmJRSkRrUGt1VGwKYkRINXM2MWJ6V3ppOVZ4S0hvWkxXcVIwTk1INkFzK3kyVU9xWTVNeUYrV0NVZE5JVDVHR1VRRDd1cnZpa2NSTwoxaHJ5Z25MVkxsak9KdC80RmMweG1XRmxzbldIbW41VU5qM2s0YktuemZQckVxZjN3NmFZMFpPU3BNdWZwenJECmhJMUxNbHNYdXVJN2lJS3ZZSVN1b1lwSTBWckFwYXUxVWRzOU9FZ1lNVTRKL0hxRGlFaUk4L09sR2twUUpBT24KWDQxOFlXUFF0NU94bndyVGhaOEVIZVpDOEZ2MG1PdEtJdFdLWU5zRDVoQ2M0a1dLNkc3S0tuVDh1TEpSMFpIWQp4YXAvZU9mMDhLMGQzVzdySzRNQ0F3RUFBYU5aTUZjd0RnWURWUjBQQVFIL0JBUURBZ0trTUE4R0ExVWRFd0VCCi93UUZNQU1CQWY4d0hRWURWUjBPQkJZRUZGMUVCMXBLakZxN2pPTURhVXYrcjhUMDEwazdNQlVHQTFVZEVRUU8KTUF5Q0NtdDFZbVZ5Ym1WMFpYTXdEUVlKS29aSWh2Y05BUUVMQlFBRGdnRUJBSHN1RFozNEk5MTh5QUg1SzR1MQpLSnNRNDNlVzM5WVZqZXlwQ2Q4ZldncDFVWHlhUUwwa1V1MkNqcEliYnlhNlFVa0NXZi96cU9YVGJSZ0J2Vk1kCm9lZ1crMk9sZ3pqUllJSzM0TU9YL0gwY1ZVaGxxV3dlbGF5azBrM0pVU2lJcjFIek9ML0Q5NjlHMy9GUitPVVgKV3ZvbkZ0MGx2eDhuK1FnS3A3ancya24wVzNod1hIV3VZUVUrVklhOGtNZUJ1M0RiK3NZQUhuRjNRR1N1S1RJeQpvK3lyQVVvUXBkNWl4d0VVZ1RyaEhOMHBCR2txeG1VenErVzRnY1dTTmNURzlDcmFaTVN5UmVrNlRWbFhFMUdJCjIvR3dhcGdRcmhFRHZxT29ONXJjQzZlYlczcnRxVVM0ejVnWHc3bTZjYWw2dmlMMzdkR1lxMnZveXkzcXNCTDIKdTMwPQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg=="
}