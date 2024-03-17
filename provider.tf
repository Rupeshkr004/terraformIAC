provider "azurerm" {
    version = ">=3.91.0, <3.94.0"
  features { }
  

  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
}
