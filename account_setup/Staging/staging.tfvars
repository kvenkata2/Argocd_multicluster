aws_access_key                      = ""
aws_secret_key                      = ""
region                              = "us-east-2"
eks_name                            = "terraform_cluster1"
subnet_ids                          = ["subnet-0d4ddb2785a4ee92d", "subnet-02baf1a3aecca3cf6"]
desired_size                        = "1"
max_size                            = "2"
min_size                            = "1"
max_unavailable                     = "1"
kubernetes_custom_resources_enabled = true
kubernetes_namespace                = "argocd"
admin_password                      = ""
extra_secrets                       = {}
git_credentials_url                 = ""
git_credentials_read_username       = ""
git_credentials_read_token          = ""
root_app_crd_api_version            = "argoproj.io/v1alpha1"
root_app_repository_url             = "https://github.com/Akshayhvg1008/kk"
root_app_repository_ref             = "HEAD"
root_app_chart_parameters           = []
root_app_chart_values               = ""


