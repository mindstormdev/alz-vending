terraform {
  required_version = "~> 1.6"
  required_providers {
    azurerm = "~> 3.88"
  }
  backend "azurerm" {}
}

provider "azurerm" {
  skip_provider_registration = true
  features {}
}