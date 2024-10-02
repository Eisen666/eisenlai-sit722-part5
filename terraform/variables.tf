variable "subscription_id" {
  description = "The subscription ID for the Azure account."
  type        = string
}

variable "tenant_id" {
  description = "The tenant ID for the Azure account."
  type        = string
}

variable "location" {
  description = "The Azure location where resources will be created."
  default     = "East US"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  default     = "eisenlai-sit722-rg"
  type        = string
}