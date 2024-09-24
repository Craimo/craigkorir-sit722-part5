# Sets global variables for this Terraform project.

variable app_name {
default = "craimo"
}

variable location {
  default = "eastus"
}

variable kubernetes_version {    
  default = "1.30.3"
}

variable "azure_client_id" {}
variable "azure_client_secret" {}
variable "azure_tenant_id" {}
variable "azure_subscription_id" {}
