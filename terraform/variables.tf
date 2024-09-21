# Define variables
variable "location" {
  default     = "australiasoutheast"
}

variable "container_registry_name" {
  default     = "sit722projectpart5"
}

variable "kubernetes_cluster_name" {
  default     = "sit722projectpart5"
}

variable app_name {
  default = "projectpart5"
}

variable kubernetes_version {
  default = "1.30.2"
}
