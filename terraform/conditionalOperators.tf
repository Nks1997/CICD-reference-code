variable "env" {
  type    = string
  default = "prod"
}

variable "create_resource" {
  type    = bool
  default = true
}

variable "azure_regions" {
  type = map(string)
  default = {
    eastus     = "East US"
    westeurope = "West Europe"
  }
}

variable "resource_groups" {
  type = list(string)
  default = ["app", "db"]
}

locals {
  vm_size = var.env == "prod" ? "Standard_D2s_v3" : "Standard_B1s"
}

# Conditional resource creation
resource "null_resource" "example" {
  count = var.create_resource ? 1 : 0
  triggers = {
    env = var.env
  }
}

# Conditional for_each
resource "null_resource" "multi" {
  for_each = var.env == "prod" ? toset(["a", "b"]) : toset(["a"])
  triggers = {
    name = each.key
  }
}

# Azure Resource Groups per region (real example)
resource "azurerm_resource_group" "rg" {
  for_each = var.azure_regions
  name     = "rg-${each.key}"
  location = each.value
}

# Azure example: multiple resources per RG (conditional)
resource "null_resource" "resources_per_rg" {
  for_each = toset(var.resource_groups)
  triggers = {
    rg   = each.key
    env  = var.env
  }
}

output "vm_size" {
  value = local.vm_size
}

output "null_example_count" {
  value = length(null_resource.example)
}

output "multi_keys" {
  value = keys(null_resource.multi)
}

output "azure_rg_names" {
  value = [for rg in azurerm_resource_group.rg : rg.name]
}

output "resources_per_rg" {
  value = keys(null_resource.resources_per_rg)
}
