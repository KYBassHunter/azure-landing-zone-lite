variable "project_name" {
  description = "Short name for this landing zone (used as prefix for resources)."
  type        = string
  default     = "lz-lite"
}

variable "location" {
  description = "Azure region for all resources."
  type        = string
  default     = "eastus"
}

variable "address_space" {
  description = "Address space for the virtual network."
  type        = string
  default     = "10.0.0.0/16"
}

variable "mgmt_subnet_prefix" {
  description = "Address prefix for the management subnet."
  type        = string
  default     = "10.0.0.0/24"
}

variable "workload_subnet_prefix" {
  description = "Address prefix for the workload subnet."
  type        = string
  default     = "10.0.1.0/24"
}

variable "shared_subnet_prefix" {
  description = "Address prefix for the shared services subnet."
  type        = string
  default     = "10.0.2.0/24"
}

variable "tags" {
  description = "Common tags applied to all resources."
  type        = map(string)
  default = {
    environment = "dev"
    owner       = "landing-zone-lite"
    costcenter  = "demo"
  }
}
