# Sets global variables for this Terraform project.

variable app_name {
}

variable location {
  default = "eastus"
}

variable kubernetes_version {    
  default = "1.30.3"
}