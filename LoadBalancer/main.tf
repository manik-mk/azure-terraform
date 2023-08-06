terraform {
  # backend "azurerm" {
  #   resource_group_name  = "MANI-1"
  #   storage_account_name = "masa0001"
  #   container_name       = "tstate"
  #   key                  = "BCQEZtWYpT3+WbtMZj/JgRjgqyVtUd7OG1MBtriIYxv99q2RVSg9jr3Y94YMxW9MoXQ45nelhUCu+AStaHCNUg=="
  # }
  #
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
}

provider "azurerm" {
  features {
  }
  skip_provider_registration = "true"
}

