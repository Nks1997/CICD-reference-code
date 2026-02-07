################################
# Terraform Block
################################
terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

################################
# Provider Block
################################
provider "azurerm" {
  features {}
}

################################
# Variables Block
################################
variable "location" {
  description = "Azure region"
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "Resource Group name"
  type        = string
  default     = "tf-demo-rg"
}

################################
# Resource Block
################################
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

################################
# Output Block
################################
output "resource_group_id" {
  description = "Resource Group ID"
  value       = azurerm_resource_group.rg.id
}
